#!/bin/sh
#
#add this to the setDomainEnv to handle the Java memory requirements
#USER_MEM_ARGS="-Xms1024m -Xmx2048m -XX:MaxPermSize=3072m"
#export USER_MEM_ARGS
#
#echo $USER_MEM_ARGS
echo "Good Morning Chip! We missed you."
echo "--Lets begin working-- "
echo "Script Starting:"
cd /oracle/app/wls_12_1_3/infra_home/user_projects/domains/storystudio/bin

echo "Changed directory to:"

pwd 

./setDomainEnv.sh 

echo "Environment Variables Set by calling ./setDomainEnv.sh"
echo " "
sleep 2;
echo " "
echo "Starting Node Manager"

nohup ./startNodeManager.sh > nodemanager.out &

echo "That was a lot of work. Resting for 30 seconds. To insure nodemanager completely starts."
sleep 10;
echo "You are looking good today! Did you sleep well last night?"
sleep 10;
echo "I was so board. Just sat around waiting. "
sleep 5;
echo "Enough Small talk, lets start the WLS Admin Server"
sleep 3;
echo "I will place the output file with the name wlsadmin.out in the directory:"
echo " "
echo "/oracle/app/wls_12_1_3/infra_home/user_projects/domains/storystudio/bin "
echo " "
sleep 3;
nohup ./startWebLogic.sh > wlsadmin.out &

echo "WLS Admin Start command issued. We need to let him completely wake up before the Managed servers start."
echo "So we are going to wait 2 minutes seconds before starting."
sleep 120;

echo "Ok, time to Start the Managed Server"
echo "I am placing the output file inside the same directory as the wlsadmin.out"
sleep 3;
echo "I suggest you leave this window up in the VNC window so you can see the terminal output from the managed server at all times. In case of a issue."

#nohup ./startManagedWebLogic.sh tab_server > tab_server.out &

echo "resting for 120 seconds before starting the second server"
sleep 120;
#nohup ./startManagedWebLogic.sh CaC_server > CaC_server.out &
#nohup ./startManagedWebLogic.sh ucb_server > ucb_server.out &
echo " "
echo "All Started. Chip is the best"
echo " "
