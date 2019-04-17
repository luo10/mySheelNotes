# 提示一个用户输入一个正整数num，然后计算1+2+3+...+num的值；必须对num是否为正整数做判断，不符合应当允许再次输入。


while true
do
  read -p "pls input a positive number: " num

  # 判断是否为整数
  # expr 只能运行整数运算
  expr $num + 1 &> /dev/null
  if [ $? -eq 0 ];then
    if [ `expr $num \> 0` -eq 1 ];then
      for((i=1;i<$num;i++))
      do
        sum=`expr $num + $i`
      done
      echo "1+2+3+...+$num = $sum"
      exit
    fi
  fi
  echo "error,input enlegal"
  continue
done