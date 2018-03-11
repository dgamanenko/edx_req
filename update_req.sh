#!/usr/bin/env bash

set -e

if [[ -f /edx/app/edx_ansible/server-vars.yml ]]; then
    extra_args="-e@/edx/app/edx_ansible/server-vars.yml"
fi


cd /tmp/edx_ansible/playbooks/
eval "ANSIBLE_LIBRARY=/tmp/edx_ansible/playbooks/library ANSIBLE_ROLES_PATH=/tmp/edx_ansible/playbooks/roles sudo -E ansible-playbook -i localhost, -c local /tmp/edx_ansible/playbooks/run_role.yml -e 'role=edxapp' --tags 'install:app-requirements' $extra_args"
