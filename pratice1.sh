#!/bin/bash

# 练习
# 变量 string="Bigdata process framework is Hadoop, Hadoop is an open source project"
# 执行脚本后，打印输出string字符串变量，并给出用户一下选项：
# 1. 打印string长度
# 2. 删除字符串中所有的Hadoop
# 3. 替换第一个Hadoop为Mapreduce
# 4. 替换全部Hadoop为Mapreduce
# 用户输入1|2|3|4，可执行对应功能; 
# q|Q 退出交互模式；


# 思路：
# 1. 将不同功能区分
  # function print_tips
  # function len_of_string
  # function del_hadoop
  # function rep_hadoop_mapreduce_first
  # function rep_hadoop_mapreduce_all
# 2. 实现第一步所定义的功能函数
# 3. 程序主流程的设计

string="Bigdata process framework is Hadoop, Hadoop is an open source project"
function print_tips {
  echo "******************************"
  echo "(1) 打印string长度"
  echo "(2) 删除字符串中所有的Hadoop"
  echo "(3) 替换第一个Hadoop为Mapreduce"
  echo "(4) 替换全部Hadoop为Mapreduce"
  echo "******************************"
}

# 长度
function len_of_string {
  echo "${#string}"
}

# 删除字符串中所有的Hadoop
function del_hadoop {
  echo "${string//Hadoop/}"
}

# 替换第一个Hadoop为Mapreduce
function rep_hadoop_mapreduce_first {
  echo "${string/Hadoop/Mapreduce}"
}

# 替换全部Hadoop为Mapreduce
function rep_hadoop_mapreduce_all {
  echo "${string//Hadoop/Mapreduce}"
}

while true
do
  echo "【string=$string】"
  echo
  print_tips
  read -p "Pls input your choice(1|2|3|4|q|Q): " choice
  case $choice in
    1)
      len_of_string
      ;;
    2)
      del_hadoop
      ;;
    3)
      rep_hadoop_mapreduce_first
      ;;
    4)
      rep_hadoop_mapreduce_all
      ;;
    q|Q)
      exit
      ;;
    *)
      echo "Error,input only in {1|2|3|4|q|Q}"
      ;;
  esac
done