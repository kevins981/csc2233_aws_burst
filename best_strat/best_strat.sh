#!/bin/bash          
LOGNAME="best_strat_3c"
HOST_ADDR="172.31.24.202"
echo "Start"  > $LOGNAME

#echo "Using up all credits first."  >> $LOGNAME
#iperf3 -c $HOST_ADDR -i 10 -t 100 >> $LOGNAME
#
#echo "============================================="  >> $LOGNAME
#echo "Strategy 1: transmit as much as we can"  >> $LOGNAME
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 1G >> $LOGNAME
#
#
#echo "Using up all credits."  >> $LOGNAME
#iperf3 -c $HOST_ADDR -i 10 -t 100 >> $LOGNAME
#
#echo "============================================="  >> $LOGNAME
#echo "Strategy 2a: wait 10s, then strat 1"  >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 1G >> $LOGNAME
#
#echo "Using up all credits."  >> $LOGNAME
#iperf3 -c $HOST_ADDR -i 10 -t 100 >> $LOGNAME
#
#echo "============================================="  >> $LOGNAME
#echo "Strategy 2b: wait 20s, then strat 1"  >> $LOGNAME
#sleep 20
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 1G >> $LOGNAME
#
#
#echo "Using up all credits."  >> $LOGNAME
#iperf3 -c $HOST_ADDR -i 10 -t 100 >> $LOGNAME
#
#echo "============================================="  >> $LOGNAME
#echo "Strategy 3: periodically send and wait. Break 1G into 4 chunks, wait 10s in between"  >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 250M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 250M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 250M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 250M >> $LOGNAME
#
#
#echo "Using up all credits."  >> $LOGNAME
#iperf3 -c $HOST_ADDR -i 10 -t 100 >> $LOGNAME
#
#echo "============================================="  >> $LOGNAME
#echo "Strategy 3b: periodically send and wait. Break 1G into 4 chunks, wait 20s in between"  >> $LOGNAME
#sleep 20
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 250M >> $LOGNAME
#sleep 20
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 250M >> $LOGNAME
#sleep 20
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 250M >> $LOGNAME
#sleep 20
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 250M >> $LOGNAME
#
#
#echo "============================================="  >> $LOGNAME
#echo "Using up all credits to prepare for strategy."  >> $LOGNAME
#iperf3 -c $HOST_ADDR -i 10 -t 60 >> $LOGNAME
#
#echo "===="  >> $LOGNAME
#echo "Strategy 3c: periodically send and wait. Break 1G into 10 chunks, wait 10s in between"  >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 100M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 100M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 100M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 100M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 100M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 100M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 100M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 100M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 100M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 100M >> $LOGNAME
#
#
#echo "============================================="  >> $LOGNAME
#echo "Using up all credits to prepare for strategy."  >> $LOGNAME
#iperf3 -c $HOST_ADDR -i 10 -t 60 >> $LOGNAME
#
#echo "===="  >> $LOGNAME
#echo "Strategy 3d: periodically send and wait. Break 1G into 50 chunks, wait 1s in between"  >> $LOGNAME
#for i in $(seq 1 50); do
#	sleep 1
#	iperf3 -c $HOST_ADDR -i 0.1 --bytes 20M >> $LOGNAME
#done
#
#echo "============================================="  >> $LOGNAME
#echo "Using up all credits to prepare for strategy."  >> $LOGNAME
#iperf3 -c $HOST_ADDR -i 10 -t 60 >> $LOGNAME
#
#echo "===="  >> $LOGNAME
#echo "Strategy 4: strategy 3 but limit bandwidth to 500M (1G 4 chunks)"  >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 250M --bitrate 500M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 250M --bitrate 500M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 250M --bitrate 500M >> $LOGNAME
#sleep 10
#iperf3 -c $HOST_ADDR -i 0.1 --bytes 250M --bitrate 500M >> $LOGNAME
#

echo "============================================="  >> $LOGNAME
echo "Using up all credits to prepare for strategy."  >> $LOGNAME
iperf3 -c $HOST_ADDR -i 10 -t 60 >> $LOGNAME

echo "===="  >> $LOGNAME
echo "Strategy 3c: periodically send and wait. Break 1G into 10 chunks, wait 10s in between"  >> $LOGNAME
for i in $(seq 1 10); do
	sleep 10
	iperf3 -c $HOST_ADDR -i 0.1 --bytes 100M >> $LOGNAME
done

#echo "============================================="  >> $LOGNAME
#echo "Using up all credits to prepare for strategy."  >> $LOGNAME
#iperf3 -c $HOST_ADDR -i 10 -t 60 >> $LOGNAME
#
#echo "===="  >> $LOGNAME
#echo "Strategy 3d: periodically send and wait. Break 1G into 50 chunks, wait 1s in between"  >> $LOGNAME
#for i in $(seq 1 50); do
#	sleep 1
#	iperf3 -c $HOST_ADDR -i 0.1 --bytes 20M >> $LOGNAME
#done

#echo "============================================="  >> $LOGNAME
#echo "Using up all credits to prepare for strategy."  >> $LOGNAME
#iperf3 -c $HOST_ADDR -i 10 -t 60 >> $LOGNAME
#
#echo "===="  >> $LOGNAME
#echo "Strategy 3e: periodically send and wait. Break 1G into 100 chunks, wait 0.5s in between"  >> $LOGNAME
#for i in $(seq 1 100); do
#	sleep 0.5
#	iperf3 -c $HOST_ADDR -i 0.1 --bytes 10M >> $LOGNAME
#done

#echo "============================================="  >> $LOGNAME
#echo "Using up all credits to prepare for strategy."  >> $LOGNAME
#iperf3 -c $HOST_ADDR -i 10 -t 60 >> $LOGNAME
#
#echo "===="  >> $LOGNAME
#echo "Strategy 3f: periodically send and wait. Break 1G into 1000 chunks, wait 0.05s in between"  >> $LOGNAME
#for i in $(seq 1 1000); do
#	sleep 0.05
#	iperf3 -c $HOST_ADDR -i 0.1 --bytes 1M >> $LOGNAME
#done
