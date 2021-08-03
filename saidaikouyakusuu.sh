#!/bin/sh

X=$1
Y=$2

  while [ 0 -ne $Y ]
  do

        r=`expr  $(($X % $Y))`
        X=$Y
        Y=$r

        if [ $X -eq  $r ]; then
                echo "$X　と $Y の最大公約数は見つかりません"
                exit 0
        fi

        #echo $r
        # echo $X
        # echo $Y


  done

   A=$1
   B=$2

  echo "$Aと$Bの最大公約数は$Xです"
