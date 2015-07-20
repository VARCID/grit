#!/bin/bash

chmod +x bin/GRIT
./bin/GRIT java -Xdebug -Xnoagent \ -Djava.compiler=NONE \ -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=6001 &
echo $! > grit.pid
