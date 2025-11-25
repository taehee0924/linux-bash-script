#!/bin/bash

stop=0 # 

while (( $stop == 0 ))
do
  
  echo -n '메뉴를 선택하세요 (d:날짜, l:목록, q:종료): '
  read replay
  
  case $replay in
    "d")
      date
      ;;
    "l")
      ls
      ;;
    "q")
      stop=1
      ;;
    *)
      
      echo "잘못된 선택입니다. 다시 입력해 주세요."
      ;;
  esac
done

echo "프로그램을 종료합니다."
