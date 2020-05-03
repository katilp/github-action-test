#!/bin/sh -l

echo "Hello $1, this is $2"
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

#exec "$@"
edmDumpEventContent root://eospublic.cern.ch//eos/opendata/cms/hidata/HIRun2011/HIHighPt/RECO/15Apr2013-v1/110000/10EF1D2D-77B4-E211-A652-003048F1C494.root > evtdump.txt
head evtdump.txt
echo "::set-output name=another_output::evtdump.txt"

