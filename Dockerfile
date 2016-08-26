FROM centos
MAINTAINER jiay0u <464118888@qq.com>

RUN yum -y install gcc glibc glibc-devel make nasm pkgconfig lib-devel openssl-devel expat-devel gettext-devel libtool mhash.x86_64 perl-Digest-SHA1.x86_64 gcc-c++

EXPOSE 80