#!/bin/bash
if [ $# -eq 0 ]; then
  echo "Нет аргумента"
  exit
fi

if [ -z "$2" ]; then
  echo "Нет аргумента 2"
fi

if [ -z "$3" ]; then
  echo "Нет аргумента 3"
  exit
fi
if test -f "$1";then
sed -i -e "s/$2/$3/" $1
echo "src/$1 - $(stat $1 | awk '{print $8}') - $(date +"%F %H:%M") - $(shasum -a256 $1  | awk '{print $1}') - sha256" >> files.log
else
  echo "$1 не существует"
fi
