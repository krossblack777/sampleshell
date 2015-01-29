#!/bin/bash

csvfile=hoge.csv
for line in `cat ${csvfile} | grep -v ^#`
do
  echo ${line}
done
