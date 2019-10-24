FROM jboss/wildfly:18.0.0.Final

RUN set -x && \
    $JBOSS_HOME/bin/jboss-cli.sh --commands="embed-server --server-config=standalone-full-ha.xml,batch,/interface=public:remove(),/interface=public:add(nic=eth0,multicast=true),run-batch,stop-embedded-server" && \
    $JBOSS_HOME/bin/add-user.sh -u admin -p admin

ENV CLUSTER_PW=wildfly-cluster

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]