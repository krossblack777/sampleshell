#!/bin/bash

# 対象ディレクトリ定義
TARGET_DIR="./*.sh"
# カウンタ定義
FILE_CNT="0"

# 配列定義
FILE=()

# TARGET_DIR配下のファイル名を配列に格納。
for i in `ls -1tr $TARGET_DIR`
do
    FILE_CNT=`expr $FILE_CNT + 1`
    FILE[FILE_CNT]=$i
    printf "[%2d] %s\n" $FILE_CNT $i
done

# 
while [ 1 ]
do
    read -p "What do you want to use file? default is  [$FILE_CNT]" num;
    if [ "$num" == "" ];then
        num=$FILE_CNT
    fi
    if [ $num -gt 0 -a $num -le $FILE_CNT ] 2>/dev/null;then
        TARGET_NAME="${FILE[$num]}"
        break
    fi
    echo "invalid parameter [$num]"
done
echo $TARGET_NAME
