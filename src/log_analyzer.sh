#!/bin/bash
if [ -z "$1" ]; then
  echo "Аргумент  не существует"
  exit
fi 
if test -f "$1" ;then
all_size="$(wc -l < $1 |awk '{print $1}'  )"
uniq_files="$(cat $1 | awk '{print $1}' | uniq -c |  wc -l | awk '{print $1}')"
cnt_hash="$(cat $1 | awk '{print $8}' | uniq -c | wc -l | awk '{print $1}')"
echo "$all_size $uniq_files $cnt_hash"
fi
