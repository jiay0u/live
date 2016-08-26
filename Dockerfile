FROM centos
MAINTAINER jiay0u <464118888@qq.com>

RUN yum -y install wget pcre pcre-devel zlib zlib-devel gcc glibc glibc-devel make nasm pkgconfig lib-devel openssl-devel expat-devel gettext-devel libtool mhash.x86_64 perl-Digest-SHA1.x86_64 gcc-c++

RUN groupadd nginx
RUN useradd -m -g nginx nginx
RUN mkdir -p /var/log/nginx /var/cache/nginx

RUN cd /root && git clone git://github.com/arut/nginx-rtmp-module.git

RUN cd /root \
    && wget http://nginx.org/download/nginx-1.11.3.tar.gz \
    && tar xzf nginx-1.11.3.tar.gz && cd nginx-1.11.3 \
    && ./configure \
        --prefix=/etc/nginx \
        --add-module=../nginx-rtmp-module \
        --with-http_stub_status_module \
    && make
    && make install

EXPOSE 80
EXPOSE 1935