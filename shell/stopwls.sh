#!/bin/sh
#
#
echo "Script Starting"

cd /oracle/app/wls_12_1_3/infra_home/user_projects/domains/storystudio/bin

echo "Changed directory to:"

pwd 

./setDomainEnv.sh 

echo "Environment Variables Set"
echo "Stopping Managed Server Story_US"

./stopManagedWebLogic.sh story_us

sleep 5:

echo "Stopping Weblogic"

echo " "
./stopWebLogic.sh


echo "Stopping Node Manger"
./stopNodeManager.sh
