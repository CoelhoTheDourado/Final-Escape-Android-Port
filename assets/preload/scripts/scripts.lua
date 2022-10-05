--make sonic float and other stuff
function onUpdate(elapsed)    if curStep == 0 then
    begin = true
end

songPos = getSongPosition()

local currentBeat = (songPos/5000)*(curBpm/60)

doTweenY('THIS ONE IS SONIC NOT THAT ONE', 'dad', 0 - 40*math.sin((currentBeat+3*3)*math.pi), 1)

doTweenY('SONIC', 'floatystuff', -500 - 60*math.sin((currentBeat+3*3)*math.pi), 1.9)

end