#!/bin/bash

# m4
wget http://ftp.gnu.org/gnu/m4/m4-1.4.18.tar.gz
# autoconf
wget http://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz
# automake
wget http://ftp.gnu.org/gnu/automake/automake-1.16.1.tar.gz

# m4
tar xvfz m4-1.4.18.tar.gz
cd m4-1.4.18
./configure --prefix=/usr
make && sudo make install
cd ..

# autoconf
tar xvfz autoconf-2.69.tar.gz
cd autoconf-2.69
./configure --prefix=/usr
make && sudo make install
cd ..

# automake
tar xvfz automake-1.16.1.tar.gz
cd automake-1.16.1
./configure --prefix=/usr
make && sudo make install
cd ..

# Download and install OpenSSH
wget https://github.com/openssh/openssh-portable/archive/refs/tags/V_9_2_P1.tar.gz
tar xvzf V_9_2_P1.tar.gz
cd openssh-portable-V_9_2_P1

autoreconf
./configure && make && make install

# Start the OpenSSH service
systemctl start ssh

# Enable the OpenSSH service to start automatically on boot
systemctl enable ssh

ssh -V
