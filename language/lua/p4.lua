--函数闭包方式实现面向对象

function People(name)
    local self = {}
    local function init()
        self.name = name
    end

    self.say = function() 
        print("People: "..self.name.." say")
    end
    init() --相当于构造函数，私有化函数
    return self
end


local p = People("I0gan")
p:say()


-- 类的继承

function Man(name)
    local self = People(name)
    self.manSay = function()
        print("Man: "..self.name.." say ...")
    end
    return self
end

local m = Man("I0gan")

m.say() --调用父类方法
m.manSay() --调用子类方法


