#!/bin/sh -l

time=$(date)
echo "::set-output name=time::$time"

cd /home/cmsusr

set  -e

env

#echo "Setting up ${CMSSW_VERSION}"
echo "Setting up $2"
source /opt/cms/cmsset_default.sh
#scramv1 project CMSSW ${CMSSW_VERSION}
#cd ${CMSSW_VERSION}/src
scramv1 project CMSSW $2
cd $2/src
eval `scramv1 runtime -sh`
echo "$2 is at your service."

exec "$@"
#edmDumpEventContent $1 > evtdump.txt
#head evtdump.txt
#edmProvDump --sort $1 > provdump.txt
#head -100 provdump.txt

#su root
#mv provdump.txt /github/workspace
#ls -l 
#ls -l /github/workspace
#ls -l /github/home
#ls -l /github/workflow
#echo "::set-output name=another_output::evtdump.txt"

