#Dockerfile to generate image on top of CentOS 7 Base for Python development
FROM pcompton/fedorabase
MAINTAINER Phil Compton <me@philcompton.com>
ENV BUILD_DATE 2014.12.15
RUN yum clean all && yum update -y && yum install -y python-statsmodels python-pandas python-matplotlib python-matplotlib-data python-pip numpy.x86_64 scipy.x86_64 python-setuptools pylint python-tools
RUN yum install -y python-ipython python-ipython-notebook python-ipython-console
