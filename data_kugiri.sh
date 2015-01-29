#!/bin/sh

aaa="aaa,bbb,ccc"
bbb="ddd eee fff"

a1=`echo $aaa | cut -d ',' -f 1`
a2=`echo $aaa | cut -d ',' -f 2`
a3=`echo $aaa | cut -d ',' -f 3`
echo $a1
echo $a2
echo $a3


column=(`echo $bbb`)
echo ${column[0]}
echo ${column[1]}
echo ${column[2]}
配列使うときはifsに注意


#!/bin/sh

filename=csv

for i in `grep -v "^#" ${filename}`
do
    OLDFS=$IFS
    IFS='$,'
    array=(`printf "%s",$i`)
    IFS=$OLDFS
    echo ${array[0]} ${array[1]} ${array[2]}

done

◆複数引数
su user -c -l shellname $1 $2 $3 $4 $5 $6 $7 $8 $9 $10



# shellname
a=$1
・
・
・
k="${10}"

