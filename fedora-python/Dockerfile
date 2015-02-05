#Dockerfile to generate image on top of CentOS 7 Base for Python development
FROM pcompton/fedora-devbase
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2015.02.05
USER root
RUN yum clean all && yum update -y && yum install -y python-statsmodels python-pandas python-matplotlib python-matplotlib-data python-pip numpy.x86_64 scipy.x86_64 python-setuptools pylint python-tools
RUN yum install -y python-ipython python-ipython-notebook python-ipython-console python-pdfminer
USER root
