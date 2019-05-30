local powerMultipliers = {
    [2] = function(a)
        return a * a
    end,
    [3] = function(a)
        return a * a * a
    end,
    [4] = function(a)
        return a * a * a * a
    end,
    [5] = function(a)
        return a * a * a * a * a
    end
}

return {
    tau = math.pi * 2,
    lerp = function(a, b, t)
        return (b - a) * t + a
    end,
    -- In JS, % is not modulus but remainder
    -- In LuaJIT, it's modulus though
    -- See https://rob.conery.io/2018/08/21/mod-and-remainder-are-not-the-same/
    modulo = function(num, div)
        return (num % div)
        -- return ((num % div) + div) % div,
    end,
    powerMultipliers = powerMultipliers,
    easeInOut = function(alpha, power)
        if (power == 1) then
            return alpha
        end
        alpha = math.max(0, math.min(1, alpha))
        local isFirstHalf = alpha < 0.5
        local slope
        if isFirstHalf then
            slope = alpha
        else
            slope = 1 - alpha
        end
        slope = slope / 0.5
        -- Make easing steeper with more multiples
        local powerMultiplier = powerMultipliers[power] or powerMultipliers[2]
        local curve = powerMultiplier(slope)
        curve = curve / 2
        if isFirstHalf then
            return curve
        else
            return 1 - curve
        end
    end
}

