#Dockerfile to generate image on top of fedora Base for C development
FROM pcompton/fedorabase
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2014.12.15
RUN yum clean all && yum update -y && yum install -y gcc gdb valgrind.x86_64 clang llvm lldb make automake autoconf pkgconfig doxygen vim-enhanced libtool libcurl-devel.x86_64 glib-devel.x86_64 glib2-devel.x86_64 sl-devel.x86_64 sqlite-devel.x86_64 ibxml2-devel.x86_64
