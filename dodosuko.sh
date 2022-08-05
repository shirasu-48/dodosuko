#!/bin/bash

for((i=0;i<12;i++));do
        if test $((RANDOM % 2)) -eq 1 ; then
                d[i]="ドド"
        else
                d[i]="スコ"
        fi
done
while :
do
if [[ ${d[@]} =~ (ド{2} (スコ ?){3}){3} ]] ; then
        echo ${d[@]}" ラブ注入♥"
        break
else
        echo ${d[0]}
        for((i=0;i<11;i++));do
        d[i]=${d[i+1]}
        done
        if test $((RANDOM % 2)) -eq 1 ; then
                d[11]="ドド"
        else
                d[11]="スコ"
        fi
fi
done
