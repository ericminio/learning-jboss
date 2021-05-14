FROM jboss/wildfly

RUN /opt/jboss/wildfly/bin/add-user.sh admin password123! --silent

CMD ["/usr/local/src/jboss/start.sh"]