local effects = {
    {
        position = Position(17114, 16958, 7),
        text = 'Trainers',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }, {
        position = Position(17114, 16954, 7),
        text = 'Bosses',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }, {
        position = Position(17114, 16956, 7),
        text = 'Hunts',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }, {
        position = Position(17114, 16960, 7),
        text = 'Quests',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }, {
        position = Position(17122, 16959, 7),
        text = 'Cassino',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }, {
        position = Position(17122, 16957, 7),
        text = 'Raids',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }, {
        position = Position(17122, 16954, 7),
        text = 'Area VIP',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }, {
        position = Position(17122, 16955, 7),
        text = 'Area VIP',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }, {
        position = Position(17110, 17109, 7),
        text = 'Templo',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }, {
        position = Position({x = 16936, y = 17132, z = 7}),
        text = 'Templo',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }, {
        position = Position({x = 16888, y = 17122, z = 7}),
        text = 'Templo',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }, {
        position = Position({x = 16888, y = 17123, z = 7}),
        text = 'Templo',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }, {
        position = Position({x = 17110, y = 17096, z = 6}),
        text = 'Templo',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }, 
    {
        position = Position({x = 16804, y = 17067, z = 9}),
        text = 'Templo',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    },
    {
        position = Position({x = 16797, y = 17116, z = 8}),
        text = 'Templo',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    },
    {
        position = Position({x = 16799, y = 17142, z = 8}),
        text = 'Templo',
        effect = {CONST_ME_TUTORIALARROW, CONST_ME_TUTORIALSQUARE}
    }
}

local animatedText = GlobalEvent("AnimatedText")

function animatedText.onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        local spectators = Game.getSpectators(settings.position, false, true, 7,
                                              7, 5, 5)
        if #spectators > 0 then
            if settings.text then
                for i = 1, #spectators do
                    spectators[i]:say(settings.text, TALKTYPE_ORANGE_2, false,
                                      spectators[i], settings.position)
                end
            end
            for i = 1, #settings.effect do
                settings.position:sendMagicEffect(settings.effect[i])
            end
        end
    end
    return true
end

animatedText:interval(5000)
animatedText:register()
