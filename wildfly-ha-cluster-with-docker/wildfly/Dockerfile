FROM jboss/wildfly:18.0.0.Final

RUN set -x && \
    $JBOSS_HOME/bin/add-user.sh -u admin -p admin 

ENV CLUSTER_PW=wildfly-cluster

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]