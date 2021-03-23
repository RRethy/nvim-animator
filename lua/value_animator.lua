local fps = 30
local delay = math.floor(1000 / fps)

local Animator = {}

function Animator:new()
    local obj = {
        deferred = nil,
    }
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function Animator:stop()
    if self.deferred then
        self.deferred:close()
    end
end

function Animator:animate(start, finish, duration, cb)
    Animator:stop()
    self.deferred = vim.defer_fn(function()
        start = start + (finish - start) / (duration / delay)
        duration = duration - delay
        if duration > 0 then
            if not cb(start) then
                self:animate(start, finish, duration, cb)
            end
        else
            cb(finish)
        end
    end, delay)
end

return Animator
