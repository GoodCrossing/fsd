#!/bin/bash
function stop {

echo "Stopping FSD Server"
killall fsd
mv log.txt log/$FSDARCHIVEDATE.txt
touch log.txt

}

pwd
trap stop EXIT
echo "Starting FSD Server"
FSDARCHIVEDATE="$(date +%F-%H-%M-%S)"
./fsd &
tail -f log.txt
