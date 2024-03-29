# ---------------------------------- #
#
# Install version control Git
#
# ---------------------------------- #

# identify the version of Linux you're at
cat /etc/os-release

# or 

cat /etc/*release*

# update apt package library

sudo apt update

# install git on Debian-based distro like Ubuntu 

sudo apt install git -y

# verify git is already installed in your local machine

git --version

# explore git commands 

git help

# Show various types of objects

git show

# List, create, or delete branches

git branch

# Download objects from another repository

git fetch

# When starting -- to create an empty Git repository or re-initialize an existing one

git init 

: ' 
You may view additional help on each command following the syntax git help <command>. For this you must first 
install git man pages using the command sudo apt-get install git-man
'

# install manual for added help context
sudo apt-get install git-man


# when starting -- always initialize a folder or directory with git repo
git init