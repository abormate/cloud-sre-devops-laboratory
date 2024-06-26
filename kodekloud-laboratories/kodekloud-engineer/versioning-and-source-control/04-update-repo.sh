# ---------------------------------------------- #
#
# -- Source Control Version -- Update Repo --
#
# ---------------------------------------------- #

: '
The Nautilus development team started with new project development. 
They have created different Git repositories to manage respective 
projects source code. One of the repositories /opt/cluster.git 
was created recently. The team has given us a sample index.html 
file that is currently present on jump host under /tmp directory. 

The repository has been cloned at /usr/src/kodekloudrepos on storage server in Stratos DC.

Copy sample index.html file from jump host to storage server under 
cloned repository at /usr/src/kodekloudrepos/cluster, further 
add/commit the file and push to the master branch.

'

sudo scp /tmp/index.html worker@ststor01:/tmp

ssh worker@ststor01

sudo mv /tmp/index.html /usr/src/kodekloudrepos/news

