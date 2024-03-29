# ----------------------------------------------- #
#
# -- Kode Kloud Engineer -- Linux -- NTP setup --
#
# ----------------------------------------------- #

: '
The system admin team of xFusionCorp Industries has noticed an issue with 
some servers in Stratos Datacenter where some of the servers are not in 
sync w.r.t time. Because of this, several application functionalities 
have been impacted. 

To fix this issue the team has started using 
common/standard NTP servers. They are finished with most of the 
servers except App Server 1. Therefore, perform the following tasks on 
this server:



1. Install and configure NTP server on App Server 1.


2. Add NTP server 1.south-america.pool.ntp.org in NTP configuration on 
App Server 1.


3. Please do not try to start/restart/stop ntp service, as we already 
have a restart for this service scheduled for tonight and we dont want 
these changes to be applied right now.

'

ssh tony@stapp01

cat /etc/os-release

# If CentOS Linux

sudo yum install ntp -y

# Configure NTP conf
vim /etc/ntp.conf

cat /etc/ntp.conf