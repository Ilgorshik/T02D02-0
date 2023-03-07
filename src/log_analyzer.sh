#!/bin/bash
if [ -z "$1" ]; then
  echo "Аргумент  не существует"
  exit
fi 
if test -f "$1" ;then
echo " $( wc -l < files.log ) $(cat files.log | awk '{print $1}' | uniq -c | wc -l |  awk '{print $1}') $(grep $1 files.log | awk '{print $8}' | uniq -c | wc -l |  awk '{print $1 -1}'  ) "
fi
