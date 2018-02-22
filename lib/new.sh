#!/bin/sh
# Printing the directory
pwd > dir.dir
dir=$(cat dir.dir)
# Identifying the directory
pid=$(cat $dir/bash.pid)
# looking if pid is running - if it is running just exit
if $(kill -CHLD $pid >/dev/null 2>&1)
then
    echo  "run has been started\n"
    exit 0
fi
# if not running then re-launch the program
cd $dir
chmod u+x run
./run & 
pgrep run > bash.pid
pid=$(cat $dir/bash.pid)
if $(kill -CHLD $pid >/dev/null 2>&1)
    echo "failed to start run \n"
then
    echo  "run has been started\n"
fi
