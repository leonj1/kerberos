FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y vim telnet lsof
RUN apt-get install -y krb5-kdc krb5-admin-server
RUN apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD bootstrap.sh /bootstrap.sh

ADD krb5.conf /etc/krb5.conf
ADD kadm5.acl /etc/krb5kdc/kadm5.acl

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf" ]

