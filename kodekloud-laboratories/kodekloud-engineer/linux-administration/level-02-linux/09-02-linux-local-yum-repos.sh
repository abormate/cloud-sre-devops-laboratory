# --------------------------------------------------- #
#
# -- Linux ServerOps -- Configure Local Yum Repos --
#
# --------------------------------------------------- #

: '
The Nautilus production support team and security team had a meeting last month in which they 
decided to use local yum repositories for maintaing packages needed for their servers. For now 
they have decided to configure a local yum repo on Nautilus Backup Server. This is one of the 
pending items from last month, so please configure a local yum repository on Nautilus Backup 
Server as per details given below.

a. We have some packages already present at location /packages/downloaded_rpms/ on 
Nautilus Backup Server.


b. Create a yum repo named local_yum and make sure to set Repository ID to local_yum. 
Configure it to use packages location /packages/downloaded_rpms/.


c. Install package vim-enhanced from this newly created repo.

'

ssh clint@stbkp01

sudo su -

cd /etc/yum.repos.d/

cat > yum_local.repo

: '
        [yum_local]
        name=yum_local
        baseurl=file:///packages/downloaded_rpms/
        gpgcheck=0
        enabled=1

'

yum clean all			# removes cache of repos enabled in /etc/yum
yum update			# installs, updates, removes packages 
yum repolist			# lists the repos creates

yum install -y --enablerepo="yum_local" wget

whereis wget

export PATH={whereis wget output path}:$PATH

wget {url} # test functionality of newly installed app