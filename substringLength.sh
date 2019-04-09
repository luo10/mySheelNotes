#!/usr/bin/env bash
# 计算字符串长度
var1="Hello World"
len1=${#var1}
echo $len1

len2=`expr length "$var1"` #mac下没有此方法
echo $len2

# 获取子串位置
var2="quicstart is a app"
ind=`expr index "$var2" app`
echo $ind

# 获取子串长度
var3="quicstart is a app"
sub_len=`expr match "$var3" quic`
echo $sub_len

# 抽取字符串中的子串
var4="kafka hadoop yarn mapreduce"
substr1=${var4:10} # 索引从第10位到最后
echo $substr1

substr2=${var4:10:5} # 索引从第10位往后5位
echo $substr2

substr3=${var4:(-5)} # 索引从倒数第5位取到最后
echo $substr3

substr4=${var4:(-5):2} # 索引从倒数第5位往后2位
echo $substr4

substr5=`expr substr "$var1" 10 5` # 从10到5
echo $substr5
