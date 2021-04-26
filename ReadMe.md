This ansible setup expects some modules to be installed via ansible-galaxy.
Therefore it requires `ansible` and `ansible-galaxy` to be already installed.

Then to install the other dependencies via ansible-galaxy run:

    ansible-galaxy install -r requirements.yml

Furthermore the playbooks expects a service credential file with access to the compute engine in the root of this repo with the name `service_account_credentials.json`.

Then to start the setup execute:

    ansible-playbook -i inventory.ini setup_project.yml
and to remove all used ressources execute:

    ansible-playbook -i inventory.ini teardown_project.yml

New users can be added by editing the file `group_vars/all.yml` and adding new users to the `users` list. Multiple ssh-keys can be provided by having them in the same string seperated by a newline.
