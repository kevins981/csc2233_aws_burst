$LOGNAME="credit_restore_exp"
$HOST_ADDR="172.31.41.182"

iperf3 -c $HOST_ADDR -i 0.1 -t 400 > $LOGNAME

echo "SLEEPING FOR 50s"  >> $LOGNAME
sleep 50
iperf3 -c HOST_ADDR -i 0.1 -t 400 >> $LOGNAME
