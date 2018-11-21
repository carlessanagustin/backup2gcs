# Local compress folder and upload to Google Cloud Storage bucket

Simple Ansible playbook to compress a folder into a tar.gz file and upload it to a Google Cloud Storage bucket.

> This playbook uses the gc_storage_module: https://docs.ansible.com/ansible/2.5/modules/gc_storage_module.html

## Requirements

* Make
* Ansible
* pwgen (optional)

## Usage

1. `cp vars_secret.yml-example vars_secret.yml` and change the new file with your GCP credentials & bucket name
2. Create a random file as an Ansible key: `make ansible_key`
3. Encrypt `vars_secret.yml` with `ansible_vault.key`: `make encrypt`
4. Run playbook: `make run`

## Included files

```
.
├── ansible.cfg        # Ansible default configuration
├── ansible_vault.key  # Ansible Vault key file
├── backup.sh          # Script that backups to a tar.gz file
├── Makefile           # Make script for running commands
├── playbook.yml       # Backup tasks
├── README.md          # These instructions
├── requirements.txt   # Python requirements
├── vars_secret.yml    # Unencrypted Ansible vars
└── vault_secret.yml   # Encrypted Ansible vars (with Ansible Vault key file)
```
