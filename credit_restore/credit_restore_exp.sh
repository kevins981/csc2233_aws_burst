iperf3 -c 172.31.41.182 -i 0.1 -t 400 > credit_restore_exp

echo "SLEEPING FOR 50s"  >> credit_restore_exp
sleep 50
iperf3 -c 172.31.41.182 -i 0.1 -t 400 >> credit_restore_exp

echo "SLEEPING FOR 100s"  >> credit_restore_exp
sleep 100
iperf3 -c 172.31.41.182 -i 0.1 -t 400 >> credit_restore_exp

echo "SLEEPING FOR 150s"  >> credit_restore_exp
sleep 150
iperf3 -c 172.31.41.182 -i 0.1 -t 400 >> credit_restore_exp

echo "SLEEPING FOR 200"  >> credit_restore_exp
sleep 200
iperf3 -c 172.31.41.182 -i 0.1 -t 400 >> credit_restore_exp

echo "SLEEPING FOR 300s"  >> credit_restore_exp
sleep 300
iperf3 -c 172.31.41.182 -i 0.1 -t 400 >> credit_restore_exp

echo "SLEEPING FOR 600s"  >> credit_restore_exp
sleep 600
iperf3 -c 172.31.41.182 -i 0.1 -t 400 >> credit_restore_exp

echo "SLEEPING FOR 1000s"  >> credit_restore_exp
sleep 1000
iperf3 -c 172.31.41.182 -i 0.1 -t 400 >> credit_restore_exp
