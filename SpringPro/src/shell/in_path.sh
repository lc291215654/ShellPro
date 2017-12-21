#!/usr/bin/env bash

#注：1.函数的结构， 没有形参
#   2.变量的引用需要符号$,而变量的定义或赋值则不需要。
#   3.赋值要无间隙， 条件要间隙
#   4.用$?获取上个函数的返回值




#for file in ./*
#do
#   # echo $file
#   sleep 1
#done
#
#bashdir=`pwd`
#if [ -f $bashdir ]; then
#    echo $bashdir
#fi
#
#if [ -d $bashdir ]; then
#    echo $bashdir
#fi
#

function in_path()
{
  cmd=$1
  echo $cmd
  retval=1
  if [ -f $cmd ]; then
    return $retval
  fi
}

in_path ../../SpringPro.iml
echo $?

basename=`pwd`

for i in `ls ../../`;
do
    echo $i
done

if [ -f ./in_path.sh ]; then
    echo fassssf
else
    echo faafaff
fi