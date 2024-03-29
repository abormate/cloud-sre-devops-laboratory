# ------------------------------------- #
#
# -- Work Files -- Linux LearnSpace --
#
# ------------------------------------- #

: '
There was some users data copied on Nautilus App Server 3 at 
/home/usersdata location by the Nautilus production support team in 
Stratos DC. Later they found that they mistakenly mixed up different 
user data there. Now they want to filter out some user data and copy 
it to another location. 

Find the details below:



On App Server 3 find all files (not directories) owned by user javed 
inside /home/usersdata directory and copy them all while keeping the 
folder structure (preserve the directories path) to /media directory.

'

# from thor@jump_host ssh into hulk server
ssh banner@stapp3

# determine Linux variant
cat /etc/os-release

# find files belonging to a particular user
find /home/usersdata -user kareem -name *

# pipe results of find command into cp 
find /home/usersdata -type f -user kareem -exec cp --parents {} /official \;

