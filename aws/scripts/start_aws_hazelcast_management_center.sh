#!bin/bash

set -x

MANCENTER_VERSION=$1



mkdir -p ${HOME}/wars
mkdir -p ${HOME}/logs




java -cp ~/hz/hazelcast-4.0.2.jar:~/hz/hazelcast.yaml -server com.hazelcast.core.server.HazelcastMemberStarter

 
java -cp hazelcast-management-center-*.war com.hazelcast.webmonitor.cli.MCConfCommandLine cluster add -H ../mancenter --client-config ../hazelcast-client.yaml 

java -Dhazelcast.mc.home=../mancenter  -jar hazelcast-management-center-*.war






java -cp hazelcast-management-center-*.war com.hazelcast.webmonitor.cli.MCConfCommandLine cluster add -H ${MAN_CENTER_HOME} \
             --client-config ./hazelcast-client.yaml >> $LOG_DIR/mancenter.conf.stdout.log 2>> $LOG_DIR/mancenter.conf.stderr.log



nohup java ${MAN_CENTER_JVM_OPTIONS} -Dhazelcast.mc.home=${MAN_CENTER_HOME} \
             -jar hazelcast-management-center-*.war >> $LOG_DIR/mancenter.stdout.log 2>> $LOG_DIR/mancenter.stderr.log &