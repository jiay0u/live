FROM centos
MAINTAINER jiay0u <464118888@qq.com>

RUN yum -y install gcc glibc glibc-devel make nasm pkgconfig lib-devel openssl-devel expat-devel gettext-devel libtool mhash.x86_64 perl-Digest-SHA1.x86_64 gcc-c++

RUN groupadd nginx
RUN useradd -m -g nginx nginx
RUN mkdir -p /var/log/nginx /var/cache/nginx

EXPOSE 80