#!/bin/bash

# テスト1 数値（正常系）

	echo "テスト1は引数が数値で（正常系）開始します" 

	echo "10と5の最大公約数は5です" > test-ans
	./saidaikouyakusuu.sh 10 5 > test-reslt

	diff test-ans test-reslt || exit 1 

	echo "テスト1は正常終了しました" 


# テスト2 数値（正常系）
	echo "テスト2は引数が数値で（正常系）開始します" 

	echo "5と100の最大公約数は5です" > test-ans
	./saidaikouyakusuu.sh 5 100 > test-reslt

	diff test-ans test-reslt || exit 1 

	echo "テスト2は正常終了しました" 



# テスト3 引数1が負数（異常系）
	echo "テスト3は引数1が負数（異常系）開始します" 

	echo "引数1の値 -5 が、正の整数ではありません。" > test-ans
	./saidaikouyakusuu.sh -5 100 > test-reslt

	diff test-ans test-reslt || exit 1 

	echo "テスト3は正常終了しました" 


# テスト4 引数2が負数（異常系）
	echo "テスト4は引数2が負数（異常系）開始します" 

	echo "引数2の値 -100 が、正の整数ではありません。" > test-ans
	./saidaikouyakusuu.sh 5 -100 > test-reslt

	diff test-ans test-reslt || exit 1 

	echo "テスト4は正常終了しました" 

# テスト5 引数1が文字列（異常系）
	echo "テスト5は引数1が文字列（異常系）開始します" 

	echo "引数1の値 A が、正の整数ではありません。" > test-ans
	./saidaikouyakusuu.sh A 100 > test-reslt

	diff test-ans test-reslt || exit 1 

	echo "テスト5は正常終了しました" 


# テスト6 引数2が負数（異常系）
	echo "テスト6は引数2が文字列（異常系）開始します"  

	echo "引数2の値 B が、正の整数ではありません。" > test-ans
	./saidaikouyakusuu.sh 5 B > test-reslt

	diff test-ans test-reslt || exit 1 

	echo "テスト6は正常終了しました" 

# テスト7 引数1が0（異常系）

	echo "テスト7は引数1が0（異常系）開始します" 

	echo "引数に0が混じっているため最大公約数の計算ができません" > test-ans
	./saidaikouyakusuu.sh 0 100 > test-reslt

	diff test-ans test-reslt || exit 1 

	echo "テスト7は正常終了しました" 


# テスト8 引数2が0（異常系）
	echo "テスト8は引数が文字列（異常系）開始します"  

	echo "引数に0が混じっているため最大公約数の計算ができません" > test-ans
	./saidaikouyakusuu.sh 5 0 > test-reslt

	diff test-ans test-reslt || exit 1 

	echo "テスト8は正常終了しました" 


echo "テストは正常終了しました" 


echo "テストは正常終了しました" > test-reslt
exit 0
