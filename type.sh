# 只读类型
var="hello world"
declare -r var

# 设置数字
num1=10
num2=$num1+20
echo $num2
declare -i num3
num3=$num1+90
echo $num3

# 查看系统函数
# declare -f 
# declare -F # 只看函数名称

# 申明数组
declare -a array
array=("jones" "mike" "kobe" "jordan")
echo ${array[@]} # 输出所有
echo ${array[0]} # 输出下标内容
echo ${#array[@]} # 输出长度
echo ${#array[0]} # 输出第一个元素长度

# 申明环境变量