local vu = game:GetService('VirtualUser')

local buttonfunctions = {
    ["mouse1click"] = function(args)
    if not args and type(args) ~= 'number' then
        args = 0,0
        if type(args) ~= 'number' then
            warn('arguments for mouse1click is nil setting to 0,0.')
            end
        end

        vu:ClickButton1(Vector2.new(args))

    end,
    ["mouse2click"] = function(args)
    if not args and type(args) ~= 'number' then
        args = 0,0
        if type(args) ~= 'number' then
            warn('arguments for mouse2click is nil setting to 0,0.')
            end
        end

        vu:ClickButton1(Vector2.new(args))

    end,
    ["mouse1press"] = function(args)
    if not args and type(args) ~= 'number' then
        args = 0,0
        if type(args) ~= 'number' then
            warn('arguments for mouse1press is nil setting to 0,0.')
            end
        end

        vu:Button1Down(Vector2.new(args))

    end,
    ["mouse1release"] = function(args)
    if not args and type(args) ~= 'number' then
        args = 0,0
        if type(args) ~= 'number' then
            warn('arguments for mouse1release is nil setting to 0,0.')
            end
        end

        vu:Button1Up(Vector2.new(args))

    end,
    ["mouse2press"] = function(args)
    if not args and type(args) ~= 'number' then
        args = 0,0
        print(type(args))
        if type(args) ~= 'number' then
            warn('arguments for mouse2press is nil setting to 0,0.')
            end
        end

        vu:Button2Down(Vector2.new(args))

    end,
    ["mouse2release"] = function(args)
    if not args and type(args) ~= 'number' then
        args = 0,0
        if type(args) ~= 'number' then
            warn('arguments for mouse2release is nil setting to 0,0.')
            end
        end

        vu:Button2Up(Vector2.new(args))

    end,
    ["mousemoveabs"] = function(args)
    if not args and type(args) ~= 'number' then
        args = 0,0
        if type(args) ~= 'number' then
            warn('arguments for mousemoveabs is nil setting to 0,0.')
            end
        end

        vu:MoveMouse(Vector2.new(args))

    end
}


for i,v in next, buttonfunctions do
getgenv()[i] = v
end

