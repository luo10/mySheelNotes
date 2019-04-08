# 删除 ov
variable_1="I love you, Do you love me"
echo $variable_1
var1=${variable_1#*ov} # 首个匹配到 删除
echo $var1
var2=${variable_1##*ov} # 匹配到最后一个 删除
echo $var2
var3=${variable_1%ov*} # 尾部开始 匹配到一个 删除
echo $var3
var4=${variable_1%%ov*} # 尾部开始 匹配到最后一个 删除
echo $var4

var5=${PATH/bin/BIN} # 将第一个小写 bin 替换为 BIN
echo $var5

var6=${PATH//bin/BIN} # 将所有小写 bin 替换为 BIN
echo $var6
