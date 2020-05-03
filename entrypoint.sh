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

# giving up with this, it gives 'multiple occurences' like this or with just $1 and the input is the full command (???): $(echo $1) 
edmProvDump --sort $3 > dump.txt
echo "ls -l"
ls -l 
echo "ls -l /github/workspace"
ls -l /github/workspace
whoami
su - cmsinst
cp dump.txt /github/workspace
head -10 dump.txt 
echo $1

# pass the filename as input next

#exec "$@"
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

