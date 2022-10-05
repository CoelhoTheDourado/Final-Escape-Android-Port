function onCreate()
    
    makeLuaSprite('bg', 'bg', -3730, -1800)
    scaleObject('bg', 2.7, 2.7);    

    makeAnimatedLuaSprite('portal', 'portal', -600, 300)
    addAnimationByPrefix('portal', 'portal thing', 'portal', 24, true)
    scaleObject('portal', 1.2, 1.2);

    makeAnimatedLuaSprite('floatystuff', 'moving stuff', -930, -100)
    addAnimationByPrefix('floatystuff', 'Float', 'moving stuff', 24, true)
    scaleObject('floatystuff', 1.2, 1.2);
    
    makeAnimatedLuaSprite('floor', 'carpet', 100, 300)
    addAnimationByPrefix('floor', 'carpetmove', 'carpet', 24, true)
    scaleObject('floor', 1.2, 1.2); 

    setCharacterY('boyfriend', 500)
    setCharacterX('boyfriend', 360)

end

function onStepHit()
    if curStep == 288 then
        addLuaSprite('bg', false)
        addLuaSprite('portal', false)
        addLuaSprite('floatystuff', false)
        addLuaSprite('floor', false)

        cameraFlash('other', 'FFFFFF', 1, false)

        setCharacterY('boyfriend', 0)
        setCharacterX('boyfriend', 500)
    end
    if curStep == 289 then
        setObjectOrder('bg', 0)
        setObjectOrder('portal', 1)
        setObjectOrder('floatystuff', 2)
        setObjectOrder('dadGroup', 3)
        setObjectOrder('floor', 4)
        setObjectOrder('boyfriendGroup', 5)
    end
end  

