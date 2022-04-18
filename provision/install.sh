# Update Centos
yum update -y

# Install Python3
yum install -y python3

# Install git
yum install -y git

# Install wget
yum install -y wget

# install latest sqlite3 version
mkdir /home/vagrant/packages && cd /home/vagrant/packages
wget https://www.sqlite.org/2019/sqlite-autoconf-3280000.tar.gz
tar zxvf sqlite-autoconf-3280000.tar.gz
cd sqlite-autoconf-3280000
./configure --prefix=/usr/local
make
make install
export LD_LIBRARY_PATH=/usr/local/lib

# Install virtualenv
pip3 install virtualenv

# make awaremproject directory
mkdir /home/awarem_codebase

# Make virtual environment
python3 -m virtualenv /home/awarem_codebase/awarem_venv

# Activate virtual environment
source /home/awarem_codebase/awarem_venv/bin/activate

# install django
pip3 install django


