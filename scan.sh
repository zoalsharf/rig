#!/bin/bash
cat data.txt | while read line
do
./masscan -p445 $line --rate=10000 >> re.txt
awk '{print $6}' re.txt >> re1.txt
done
