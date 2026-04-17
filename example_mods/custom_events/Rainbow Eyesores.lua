function onEvent(name, value1, value2)
    if name == 'Rainbow Eyesores' then
        -- value1 is the speed of the flash
        -- value2 is the intensity
        cameraFlash('camGame', '0xFFFFFFFF', 0.5, true)
        
        -- Start the chaotic color loop
        doRainbowLoop(value1)
    end
end

function doRainbowLoop(speed)
    local colors = {'FF0000', '00FF00', '0000FF', 'FFFF00', 'FF00FF'}
    local randomColor = colors[getRandomInt(1, #colors)]
    
    setProperty('camGame.bgColor', getColorFromHex(randomColor))
    
    -- Loop it based on speed
    runTimer('eyesoreLoop', speed or 0.1)
end

function onTimerCompleted(tag)
    if tag == 'eyesoreLoop' then
        doRainbowLoop(0.1)
    end
end
