#!/bin/bash
LOGNAME="credit_restore_xin"
HOST_ADDR="172.31.24.202"
echo "Start"  > $LOGNAME

iperf3 -c $HOST_ADDR -i 0.1 -t 100 >> $LOGNAME

echo "SLEEPING FOR 50s"  >> $LOGNAME
sleep 50
iperf3 -c $HOST_ADDR -i 0.1 -t 100 >> $LOGNAME

echo "SLEEPING FOR 100s"  >> $LOGNAME
sleep 100
iperf3 -c $HOST_ADDR -i 0.1 -t 100 >> $LOGNAME

echo "SLEEPING FOR 150s"  >> $LOGNAME
sleep 150
iperf3 -c $HOST_ADDR -i 0.1 -t 100 >> $LOGNAME

echo "SLEEPING FOR 200"  >> $LOGNAM$LOGNAME
sleep 200
iperf3 -c $HOST_ADDR -i 0.1 -t 100 >> $LOGNAME

echo "SLEEPING FOR 300s"  >> $LOGNAME
sleep 300
iperf3 -c $HOST_ADDR -i 0.1 -t 100 >> $LOGNAME

echo "SLEEPING FOR 600s"  >> $LOGNAME
sleep 600
iperf3 -c $HOST_ADDR -i 0.1 -t 100 >> $LOGNAME

echo "SLEEPING FOR 1000s"  >> $LOGNAME
sleep 1000
iperf3 -c $HOST_ADDR -i 0.1 -t 100 >> $LOGNAME

