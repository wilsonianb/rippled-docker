FROM centos:latest

MAINTAINER Brandon Wilson <bwilson@ripple.com>

RUN rpm -Uvh https://mirrors.ripple.com/ripple-repo-el7.rpm && yum install -y --enablerepo=ripple-stable rippled

EXPOSE 5005
EXPOSE 51235
EXPOSE 6006

CMD /opt/ripple/bin/rippled
