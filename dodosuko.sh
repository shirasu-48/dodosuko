#!/bin/bash
for((i=0;i<12;i++));do
        if test $((RANDOM % 2)) -eq 1 ; then
                dodosuko[i]="ドド"
        else
                dodosuko[i]="スコ"
        fi
done
while :
do
if [[ ${dodosuko[@]} =~ (ド{2} (スコ ?){3}){3} ]] ; then
        echo ${dodosuko[@]}" ラブ注入♥"
        break
else
        echo ${dodosuko[0]}
        for((i=0;i<11;i++));do
        dodosuko[i]=${dodosuko[i+1]}
        done
        if test $((RANDOM % 2)) -eq 1 ; then
                dodosuko[11]="ドド"
        else
                dodosuko[11]="スコ"
        fi
fi
done
