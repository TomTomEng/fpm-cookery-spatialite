FROM centos:centos7
RUN yum install -y ruby ruby-devel rubygem rubygem-devel rubygem-rake vim tar rpm-build gcc gcc-c++ make git libxml2-devel expat-devel
RUN gem install fpm-cookery
ADD _docker-make-rpms /tmp/_docker-make-rpms
