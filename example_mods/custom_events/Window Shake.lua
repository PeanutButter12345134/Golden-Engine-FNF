function onEvent(name, value1, value2)
    if name == 'Shaking Window' then
        local intensity = tonumber(value1) or 10
        
        -- This moves the ACTUAL game window
        setPropertyFromClass('lime.app.Application', 'current.window.x', getPropertyFromClass('lime.app.Application', 'current.window.x') + getRandomInt(-intensity, intensity))
        setPropertyFromClass('lime.app.Application', 'current.window.y', getPropertyFromClass('lime.app.Application', 'current.window.y') + getRandomInt(-intensity, intensity))
    end
end