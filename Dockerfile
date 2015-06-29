FROM philippbauer/wildfly:8.2.0.Final
ADD wildfly-gelf-standalone.xml /opt/wildfly/standalone/configuration/standalone.xml
ADD modules/biz /opt/wildfly/modules/biz
ENV GRAYLOG_HOST 127.0.0.1
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0","-bmanagement","0.0.0.0"]
