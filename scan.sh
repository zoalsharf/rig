#!/bin/bash
cat data.txt | while read line
do
./masscan -p8728 $line --rate=5000 >> re.txt
done