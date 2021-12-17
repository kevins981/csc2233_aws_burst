

cat bw_exp | tr -s " " | cut -d" " -f3 | cut -d"-" -f1 > bw_exp_cut1

cat bw_exp | tr -s " " | cut -d" " -f7 > bw_exp_cut2

paste -d, bw_exp_cut1 bw_exp_cut2 > bw_exp.csv
