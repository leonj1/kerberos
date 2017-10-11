FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y vim telnet lsof
RUN apt-get install -y krb5-kdc krb5-admin-server

ADD krb5.conf /etc/krb5.conf
ADD kadm5.acl /etc/krb5kdc/kadm5.acl

