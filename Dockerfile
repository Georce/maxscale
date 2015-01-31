FROM centos:centos6.6

MAINTAINER wujian@wujian360.cn

ADD maxscale-1.0.4-stable.rpm /maxscale-1.0.4-stable.rpm

RUN yum localinstall -y /maxscale-1.0.4-stable.rpm && yum clean all

ADD MaxScale.cnf /usr/local/skysql/maxscale/etc/MaxScale.cnf

ADD run.sh /run.sh

EXPOSE 3306

CMD ["/run.sh"]
