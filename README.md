# centos7-openssh-testbed

> Docker-based testbed for OpenSSH version upgrade testing.

<br/>

### Target CentOS Info

CentOS 7.9.2009 is a version of the CentOS operating system, which is a community-driven, freely available version of the Red Hat Enterprise Linux (RHEL) operating system.

CentOS 7.9.2009 is a minor release that was released on September 29th, 2020 and it's a stable and well-tested version of CentOS 7. It includes bug fixes, security updates, and enhancements to the underlying technology of the operating system

<br/>

### Test Environment

This testbed uses two CentOS 7.9 containers:

1. centos79_1 (SSH 7.4)

- OpenSSH 7.4 P1 version installation
- Port: 1111:80
- Installation script: `install-openssh74.sh`

2. centos79_2 (SSH 9.2)

- Upgrade to OpenSSH 9.2 P1 version
- Port: 2222:80
- Upgrade script: `upgrade-openssh92.sh`

<br/>

### Directory Structure

```bash
├── Dockerfile                      # CentOS 7.9 base image configuration
├── docker-compose.yml             # Container composition definition
├── cent79_1_httpd.conf           # Container1 Apache configuration
├── cent79_2_httpd.conf           # Container2 Apache configuration
├── cent79_1_root/                # Container1 installation files
├── cent79_2_root/                # Container2 installation files
└── utils/                        # Utility scripts
```

<br/>

### Note

This testbed is designed to help test and verify OpenSSH version upgrades from 7.4 to 9.2 in a controlled environment. It provides isolated containers for testing both versions simultaneously and includes necessary tools for monitoring and configuration.
