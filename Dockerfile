FROM centos:6

RUN yum -y update && \
    yum -y install wget

RUN wget http://repo.continuum.io/archive/Anaconda2-4.0.0-Linux-x86_64.sh && \
    /bin/sh Anaconda2-4.0.0-Linux-x86_64.sh -bfp /opt/anaconda && \
    rm -f Anaconda2-4.0.0-Linux-x86_64.sh

ENV PATH /opt/anaconda/bin:$PATH
