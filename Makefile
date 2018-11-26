PYTHON_ENV=pyenv

install: packages virtualenv

packages:
	sudo apt-get update
	sudo apt-get -y install python-setools python-pip python-virtualenv pwgen

virtualenv:
	virtualenv -p python2 ${PYTHON_ENV}
	${PYTHON_ENV}/bin/pip install -r requirements.txt


run_password:
	#ansible-playbook playbook.yml --ask-vault-pass
	./playbook.yml --ask-vault-pass

run:
	./playbook.yml --vault-password-file=./ansible_vault.key

encrypt:
	rm -f vault_secret.yml
	ansible-vault encrypt --vault-password-file=./ansible_vault.key --output=vault_secret.yml vars_secret.yml
	# ansible-vault encrypt --output=vault_secret.yml vars_secret.yml

uninstall:
	sudo rm -Rf ${PYTHON_ENV}

ansible_key:
	pwgen 24 50 > ansible_vault.key
	@# openssl genrsa -out ansible_vault.key 2048
