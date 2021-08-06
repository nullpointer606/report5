#!/bin/bash

X=$1
Y=$2

a=${1}
b=${2}


#引数チェック

  expect_empty=`echo -n ${a} | sed 's/[0-9]//g'`

  if [ "x" = "x${a}" ] || [ "x" != "x${expect_empty}" ];then
	echo "引数1の値 ${a} が、正の整数ではありません。"
	exit 1
  fi

  expect_empty=`echo -n ${b} | sed 's/[0-9]//g'`

  if [ "x" = "x${b}" ] || [ "x" != "x${expect_empty}" ];then
	echo "引数2の値 ${b} が、正の整数ではありません。"
    	exit 1
  fi

#負の数が引数の場合

  if [ 0 -eq $X  ] || [ 0 -eq $Y  ]; then
                echo "引数に0が混じっているため最大公約数の計算ができません"
                exit 1
		
  fi

#最大公約数比較  

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
