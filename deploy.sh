#! /bin/bash

serverIp=`cat $1`
jobName=$2
buildVersion=$3
serviceCount=$4

echo "Deploying ${jobName} on ${serverIp} with build ${buildVersion} and ${serviceCount} instances...\n"

ssh root@${serverIp} "/root/startJob.sh ${jobName} ${buildVersion} ${serviceCount}"

exit 0
