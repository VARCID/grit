#!/bin/bash

chmod +x bin/GRIT
if [ -e ./log/grit.out ]
 then
  rm -f ./log/grit.out
  echo "old grit.old deleted"
fi
nohup ./bin/GRIT java -Xdebug -Xnoagent \ -Djava.compiler=NONE \ -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=6001 &>./log/grit.out &
echo $! > grit.pid
