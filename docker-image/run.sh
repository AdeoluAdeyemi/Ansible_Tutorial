#!/bin/bash
  
function shutdown {
    echo "Stopping instance ..."
    echo "Instance stopped"
    exit 0
}

trap "shutdown" SIGTERM


echo "Starting instance ..."
rpcbind 
IP=`hostname -i`
echo "Instance started and listening on $IP"

sleep infinity & wait
