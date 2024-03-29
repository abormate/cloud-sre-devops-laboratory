# --------------------------------------------- #
#
# -- Ansible -- Copy Module -- Kode Kloud Engineer --
#
# --------------------------------------------- #

: '
There is data on jump host that needs to be copied on all application servers 
in Stratos DC. Nautilus DevOps team want to perform this task using Ansible. 

Perform the task as per details mentioned below:

a. On jump host create an inventory file /home/thor/ansible/inventory and add 
all application servers as managed nodes.


b. On jump host create a playbook /home/thor/ansible/playbook.yml to copy 
/usr/src/sysops/index.html file to all application servers at location 
/opt/sysops.


Note: Validation will try to run the playbook using command ansible-playbook 
-i inventory playbook.yml so please make sure the playbook works this way 
without passing any extra arguments.


'