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
