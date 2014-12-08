#Dockerfile to generate image on top of CentOS 7 Base for C development
FROM pcompton/centos7base
MAINTAINER Phil Compton <me@philcompton.com>
RUN yum clean all && yum update -y && yum install -y gcc gdb valgrind.x86_64 clang llvm lldb make automake autoconf pkgconfig doxygen vim-enhanced emacs libtool libcurl-devel.x86_64 glib-devel.x86_64 glib2-devel.x86_64 sl-devel.x86_64 sqlite-devel.x86_64 ibxml2-devel.x86_64
