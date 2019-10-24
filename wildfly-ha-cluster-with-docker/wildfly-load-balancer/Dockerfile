FROM jboss/wildfly:18.0.0.Final

RUN set -x && \
    $JBOSS_HOME/bin/jboss-cli.sh --commands="embed-server --server-config=standalone-load-balancer.xml,batch,/interface=public:remove(),/interface=public:add(nic=eth0,multicast=true),/socket-binding-group=standard-sockets/socket-binding=mcmp-management:write-attribute(name=interface, value=public),/socket-binding-group=standard-sockets/socket-binding=modcluster:write-attribute(name=interface, value=public),run-batch,stop-embedded-server" && \
    $JBOSS_HOME/bin/add-user.sh -u admin -p admin


ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]