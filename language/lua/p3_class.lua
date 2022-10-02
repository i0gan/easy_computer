-- 采用复制表方式实现类的继承

function clone(tab)
    local ins = {}
    for key, var in pairs(tab) do
        ins[key] = var
    end
    return ins
end


function copy(dist, tab)
    for key, var in pairs(tab) do
        dist[key] = var
    end
end


People = {}
People.say = function()
    print("People say")
end
People.new = function()
    return clone(People)
end


Man = {}
Man.new = function(name)
    local self = People.new() -- 继承People类
    copy(self, Man)
    return self
end

Man.manSay = function()
    print("Man say")
end


m = Man.new()
m.say() -- 调用父类方法
m.manSay() -- 调用自己的方法

