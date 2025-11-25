#!/bin/bash
# 사용법: ./rhead.bash [디렉토리]
# 대상 디렉토리와 모든 하위 디렉토리 내에 있는
# 파일들의 헤더를 프린트

cd $1
for file in *
do
  if [ -f $file ]
  then
    echo "========= $file ========="
    head $file
  fi

  if [ -d $file ]
  then
    /home/taehee/bash/rhead.bash $file
  fi
done
