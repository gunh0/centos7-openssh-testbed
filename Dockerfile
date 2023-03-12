# Use the official CentOS image as the base image
FROM centos:7.9.2009

# Run any necessary commands to prepare the environment
RUN yum update -y && \
    yum install -y httpd && \
    yum install -y cronie
RUN yum -y install systemd dbus
RUN systemctl enable dbus.service
RUN systemctl enable systemd-logind.service
RUN systemctl enable crond.service

# Start the Apache web server when the container starts
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
