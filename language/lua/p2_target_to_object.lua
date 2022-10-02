--采用复制表方式实现面向对象

-- 采用table+clone来实现

--用于复制table，返回一个新的table
function clone(tab)
    local ins = {}
    for key, var in pairs(tab) do
        ins[key] = var
    end
    return ins
end

--创建一个table
People = {}

People.say = function()
    print("People say")
end

local p = clone(People)

p.say()


-- 采用自己构造的方法来实现

People2 = {}
People2.new = function(name)
    local self = clone(People2)
    self.name = name
    return self
end

People2.say = function(self)
    print("People2 :"..self.name.." say")
end

local p = People2.new("I0gan")
p.say(p)

p:say() -- 等价于 p.say(p)


