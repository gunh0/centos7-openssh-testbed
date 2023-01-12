#!/bin/bash

# Update the system
yum update -y

yum install -y wget
yum install -y autoconf
yum install -y make
yum install -y gcc
yum install -y zlib-devel
yum install -y openssl
yum install -y openssl-devel
yum install -y libssl-dev

# Download and install OpenSSH
wget https://github.com/openssh/openssh-portable/archive/refs/tags/V_7_4_P1.tar.gz
tar xvzf V_7_4_P1.tar.gz
cd openssh-portable-V_7_4_P1

# wget https://github.com/openssh/openssh-portable/archive/refs/tags/V_9_2_P1.tar.gz
# tar xvzf V_9_2_P1.tar.gz
# cd openssh-portable-V_9_2_P1

autoreconf
./configure && make && make install

# Start the OpenSSH service
systemctl start ssh

# Enable the OpenSSH service to start automatically on boot
systemctl enable ssh

ssh -V