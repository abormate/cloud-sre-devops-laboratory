# ------------------------------------------- #
#
# -- Source Control -- Branch Delete --
#
# ------------------------------------------- #

: '
Nautilus developers are actively working on one of the project 
repositories, /usr/src/kodekloudrepos/beta. They were doing some 
testing and created few test branches, now they want to clean 
those test branches. Below are the requirements that have been 
shared with the DevOps team:

On Storage server in Stratos DC delete a branch named 
xfusioncorp_beta from /usr/src/kodekloudrepos/beta git repo.

'

ssh worker@ststor01

cd /usr/src/kodekloudrepos/beta

git branch

git checkout master

git branch -D xfusioncorp_beta

