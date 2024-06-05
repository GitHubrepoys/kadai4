#!/bin/bash
#
# 最大公約数算出するスクリプト
#

# 数値チェック自然数のみ
function validate(){
  if [[ "$1" =~ ^[0-9]+$ ]]; then
    return 0
  else
    echo -e "Error!"
    exit 1
  fi
}

# 最大公約数の計算
# ユークリッドの互除法（再帰）
function gcd(){
  local x=$1;
  local y=$2;
  # 基底条件
  if(($2==0));then
    echo "$x";
  else
    # 再帰
    echo $(gcd $y $(($x % $y)) ); 
  fi
}

#
# Main処理
#
validate $1
validate $2
gcd $1 $2
