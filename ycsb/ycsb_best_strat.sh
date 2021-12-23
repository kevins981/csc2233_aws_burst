#!/bin/bash          
LOGNAME="ycsb_best_strat_c"
HOST_ADDR="172.31.24.202"
echo "Start"  > $LOGNAME
echo "Start"  > ${LOGNAME}_time
YCSB="/home/ec2-user/csc2233/ycsb-0.17.0"

# start monitoring
../../iftop-1.0pre4/iftop -t >> $LOGNAME &




echo "!!!!!!!!!!!!!!!!!!!!!"  >> $LOGNAME
echo "Using up all credits to prepare for strategy."  >> $LOGNAME

echo "make sure all tokens are drained first" >> $LOGNAME 
$YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_drain_tokens -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32

echo "!!!!!!!!!!!!!"  >> $LOGNAME
echo "Strategy 1"  >> $LOGNAME
#{ time $YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_test -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32 ; } 2>> $LOGNAME
#/usr/bin/time -o ${LOGNAME}_time $YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_test -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32
echo "Strategy 1"  >> ${LOGNAME}_time
$YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_full -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32 >> ${LOGNAME}_time


echo "!!!!!!!!!!!!!!!!!!!!!"  >> $LOGNAME
echo "Using up all credits to prepare for strategy."  >> $LOGNAME

echo "make sure all tokens are drained first" >> $LOGNAME 
$YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_drain_tokens -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32

echo "!!!!!!!!!!!!!"  >> $LOGNAME
echo "Strategy 2"  >> $LOGNAME
sleep 10
echo "Strategy 2"  >> ${LOGNAME}_time
$YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_full -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32 >> ${LOGNAME}_time


echo "!!!!!!!!!!!!!!!!!!!!!"  >> $LOGNAME
echo "Using up all credits to prepare for strategy."  >> $LOGNAME

echo "make sure all tokens are drained first" >> $LOGNAME 
$YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_drain_tokens -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32

echo "!!!!!!!!!!!!!"  >> $LOGNAME
echo "Strategy 2b"  >> $LOGNAME
sleep 20
echo "Strategy 2b"  >> ${LOGNAME}_time
$YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_full -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32 >> ${LOGNAME}_time


echo "!!!!!!!!!!!!!!!!!!!!!"  >> $LOGNAME
echo "Using up all credits to prepare for strategy."  >> $LOGNAME

echo "make sure all tokens are drained first" >> $LOGNAME 
$YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_drain_tokens -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32

echo "!!!!!!!!!!!!!"  >> $LOGNAME
echo "Strategy 3"  >> $LOGNAME
echo "Strategy 3"  >> ${LOGNAME}_time
for i in $(seq 1 4); do
	sleep 10
	$YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_4iter -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32 >> ${LOGNAME}_time
done



echo "!!!!!!!!!!!!!!!!!!!!!"  >> $LOGNAME
echo "Using up all credits to prepare for strategy."  >> $LOGNAME

echo "make sure all tokens are drained first" >> $LOGNAME 
$YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_drain_tokens -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32

echo "!!!!!!!!!!!!!"  >> $LOGNAME
echo "Strategy 3c"  >> $LOGNAME
echo "Strategy 3c"  >> ${LOGNAME}_time
for i in $(seq 1 10); do
	sleep 10
	$YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_10iter -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32 >> ${LOGNAME}_time
done




echo "!!!!!!!!!!!!!!!!!!!!!"  >> $LOGNAME
echo "Using up all credits to prepare for strategy."  >> $LOGNAME

echo "make sure all tokens are drained first" >> $LOGNAME 
$YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_drain_tokens -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32

echo "!!!!!!!!!!!!!"  >> $LOGNAME
echo "Strategy 3d"  >> $LOGNAME
echo "Strategy 3d"  >> ${LOGNAME}_time
for i in $(seq 1 50); do
	sleep 1
	$YCSB/bin/ycsb load redis -s -P $YCSB/workloads/workload_50iter -p "redis.host=172.31.24.202" -p "redis.port=5201" -threads 32 >> ${LOGNAME}_time
done




# kill iftop
#RUNNING_PID=$!
#kill ${RUNNING_PID}
pkill iftop

#echo "===="  >> $LOGNAME
#echo "Strategy 3f: periodically send and wait. Break 1G into 1000 chunks, wait 0.05s in between"  >> $LOGNAME
#for i in $(seq 1 1000); do
#	sleep 0.05
#	iperf3 -c $HOST_ADDR -i 0.1 --bytes 1M >> $LOGNAME
#done
