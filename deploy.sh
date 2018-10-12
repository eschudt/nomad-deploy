#! /bin/bash

serverIp=`cat $1`
jobName=$2
buildVersion=$3
serviceCount=$4

echo "Deploying ${jobName} on ${serverIp} with build ${buildVersion} and ${serviceCount} instances...\n"

vaultToken=`grep "Initial Root Token" /root/vaultDetails.txt | cut -d' ' -f4`
ssh root@${serverIp} "/root/startJob.sh ${jobName} ${buildVersion} ${serviceCount} ${vaultToken}"

exit 0
