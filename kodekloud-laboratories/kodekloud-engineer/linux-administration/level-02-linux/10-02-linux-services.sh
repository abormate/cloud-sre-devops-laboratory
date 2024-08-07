# -------------------------------------------------- #
#
# -- Linux ServerOps -- Services -- 
#
# -------------------------------------------------- #

: '
As per details shared by the development team, the new application release has some 
dependencies on the back end. There are some packages/services that need to be installed on 
all app servers under Stratos Datacenter. As per requirements please perform the following 
steps:

a. Install squid package on all the application servers.

b. Once installed, make sure it is enabled to start during boot.

'

cat /etc/os-release/

ssh worker@stapp01

sudo su - 

yum install samba -y

ls -l /etc/ | grep os-release

systemctl enable samba; systemctl start samba; systemctl status samba

ssh steve@stapp02

ssh banner@stapp03

sudo su -

ssh worker00@stapp01

sudo su -

yum install cups -y

systemctl enable cups; systemctl start cups; systemctl status cups