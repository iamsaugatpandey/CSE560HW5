

#!/bin/bash

rm sim_second.csv
rm cache_miss_rate.csv

# Cache miss rate (line 212 or 222, item 2 of stats.txt)
for d in /home/warehouse/p.saugat/cse560m/hw5/sims/*/ ; do
    path="${d}stats.txt"
    dir="${d#/*/*/*/*/*/*/}"
    num=$(grep "sim_seconds" $path | awk '{print $2}')
    num2=$(grep -nr "l2.overall_miss_rate::total" $path | awk -F " " '{print $2}')

    printf "${dir%/},${num}\n" >> sim_second.csv
    printf "${dir%/},${num2}\n" >> cache_miss_rate.csv
    
done