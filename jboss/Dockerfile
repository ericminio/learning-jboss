FROM jboss/wildfly

USER root

RUN yum install -y yum-utils && \
    yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo && \
    yum install -y docker-ce docker-ce-cli containerd.io

RUN /opt/jboss/wildfly/bin/add-user.sh admin password123! --silent

CMD ["/usr/local/src/jboss/start.sh"]