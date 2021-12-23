LOG="bw_exp_3G"

cat $LOG | tr -s " " | cut -d" " -f3 | cut -d"-" -f1 > ${LOG}_cut1

cat $LOG | tr -s " " | cut -d" " -f7 > ${LOG}_cut2

paste -d, ${LOG}_cut1 ${LOG}_cut2 > ${LOG}.csv
