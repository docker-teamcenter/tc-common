FROM centos:7

ARG HTTP_PROXY=""

ENV JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.151-1.b12.el7_4.x86_64/bin \
    JRE_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.151-1.b12.el7_4.x86_64/jre \
    HTTP_PROXY=$HTTP_PROXY \
    HTTPS_PROXY=$HTTP_PROXY \
    NO_PROXY=localhost,127.0.0.1

RUN echo proxy=$HTTP_PROXY >> /etc/yum.conf \
    && yum -y update \
    && yum -y install \
    git \
    svn \
    java-1.8.0-openjdk-devel \
    && yum clean all
