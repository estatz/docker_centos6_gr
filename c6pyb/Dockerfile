FROM c6conda

RUN yum -y install epel-release && \
    yum -y update && \
    yum -y groupinstall "Development Tools" && \
    yum -y install sudo glib2-devel zlib-devel

RUN sed -i "/Defaults[ ]*requiretty/c\#Defaults requiretty" /etc/sudoers && \
    pip install git+https://github.com/gnuradio/pybombs.git && \
    pybombs recipes add gr-recipes git+https://github.com/estatz/gr-recipes.git && \
    pybombs prefix init /gnuradio-prefix -a target && \
    source /gnuradio-prefix/setup_env.sh && \
    pybombs -vvv -p target install apache-thrift

# notes:
#   pybombs needs sudo
#   autoconf/automake need glib2-devel
#   boost needs zlib-devel if zlib is installed (i.e. "Development Tools" group)
#   libtool source build needs help2man texinfo
