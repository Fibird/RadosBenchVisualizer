#!/bin/bash

input="dmclock_log.txt"
output="dmclock_log_rt.txt"

cat $input | while IFS= read -r line; do
    sleep 1
    printf '%s\n' "$line"
    printf '%s\n' "$line" >> $output
done

exit 0
