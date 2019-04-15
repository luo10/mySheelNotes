# 获取系统的所有用户并输出
index=1
for user in `cat /etc/passwd | cut -d ":" -f 1`
do
  # echo "This is $index user: $user"
  index=$(($index + 1))
done

# 根据系统时间计算今年或明年 
# $((a + a))
echo "This is $(date +%Y) year"
echo "This is $(($(date +%Y) + 1)) year"

# 根据系统时间获取今年还剩下多少星期，已经过了多少星期
# data +%j
echo "This year have passed $(date +%j) days"
echo "This year have passed $(($(date +%j)/7)) weeks"

echo "There is $((365 - $(date +%j))) days before new year"
echo "There is $(((365 - $(date +%j))/7)) weeks before new year"

# 判定 nginx 进程是否存在，若不存在则自动拉起该进程
# ps -ef | grep nginx | grep -v grep | wc -l
nginx_process_num=$(ps -ef | grep nginx | grep -v grep | wc -l) # 拿到进程个数
if [ $nginx_process_num -eq 0 ];then
  sudo nginx 
fi
