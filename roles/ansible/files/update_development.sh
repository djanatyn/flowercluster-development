#!/bin/zsh

cd /var/local/ansible; sudo -u ansible git pull
ansible-playbook -i hosts site.yml --vault-password-file=vault_pass "$@"
