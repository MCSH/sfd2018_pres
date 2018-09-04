#!/bin/bash
if [ $# -eq 0 ]
  then
    export FILE="pres.rst"
else
    export FILE=$1
fi
(trap - INT;hovercraft $FILE -p 8080 -t sixfeetup_hovercraft) &
p1=$!
sleep 1
xdg-open http://localhost:8080
trap '' INT
wait $p1
