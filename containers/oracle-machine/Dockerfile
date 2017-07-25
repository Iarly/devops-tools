FROM wnameless/oracle-xe-11g

MAINTAINER iarly.peixoto <iarly.peixoto@siteware.com.br>

ADD /scripts /scripts

ADD /dumps /dumps
RUN chmod 777 /dumps/*
#ADD dmp /u01/app/oracle/admin/XE/dpdump/
#ADD a-create-user.sql /docker-entrypoint-initdb.d/
#RUN ./b-import-dmp.sh