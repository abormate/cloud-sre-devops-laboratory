# ----------------------------------------------- #
#
# -- Configure Passwordless Sudo --
#
# ----------------------------------------------- #

: '
We have some users on all app servers in Stratos Datacenter. Some of 
them have been assigned some new roles and responsibilities, therefore 
their users need to be upgraded with sudo access so that they can 
perform admin level tasks.


a. Provide sudo access to user mark on all app servers.
b. Make sure you have set up password-less sudo for the user.

'

ssh worker00@stapp01

sudo su -

visudo

su mark

sudo su -

ssh worker_steve@stapp02

