--定义局部变量，只能在当前文件使用
local var  = 0

--定义全局变量
var2 = 1

--注释

-- 表
print("表: table")

myTable = {}

myTable.word = "hello"
myTable.num = 100
print(myTable.word)
print(myTable.num)

print(myTable["word"])

myTable2 = {hello = "Hello lua"}
print(myTable2["hello"])

-- 遍历table

for key, var in pairs(myTable) do
    print(key, var)
end

--数组
print("数组")

arr1 = {1, 2, 3, 4, 5, "hello"}

--打印数组
for key, var in pairs(arr1) do
    print(key, var)
end

arr2 = {}
-- 采用api初始化数组
for var=1, 100 do
    table.insert(arr2, 1, var)
end

--print()#
--打印数组
--for key, var in pairs(arr2) do
--    print(key, var)
--end

--print(arr)

