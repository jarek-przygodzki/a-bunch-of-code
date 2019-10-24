#!/usr/bin/env bash

if [ ! -z "${NODE_NAME}" ]; then
    NODE_NAME_OPT="-Djboss.node.name=${NODE_NAME}"
else
    NODE_NAME_OPT=
fi

exec /opt/jboss/wildfly/bin/standalone.sh \
    -bmanagement=0.0.0.0 \
    -Djboss.server.default.config=standalone-full-ha.xml \
    ${NODE_NAME_OPT} \
    -Djboss.messaging.cluster.password=${CLUSTER_PW} \
    -Djgroups.bind_addr=match-interface:eth0 \
    $@