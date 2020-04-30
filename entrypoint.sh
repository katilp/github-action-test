#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
pwd
ls -l
whoami
cd /home/cmsusr
pwd
ls -l

set  -e

#echo "Setting up ${CMSSW_VERSION}"
echo "Setting up CMSSW_4_2_8"
source /opt/cms/cmsset_default.sh
#scramv1 project CMSSW ${CMSSW_VERSION}
#cd ${CMSSW_VERSION}/src
scramv1 project CMSSW CMSSW_4_2_8
cd CMSSW_4_2_8/src
eval `scramv1 runtime -sh`
echo "CMSSW should now be available."

#exec "$@"
pwd
ls -l
