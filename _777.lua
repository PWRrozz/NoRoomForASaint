SMODS.Joker{ --7-7-7
    name = "7-7-7",
    key = "_777",
    config = {
        extra = {
            ante_value = 8
        }
    },
    loc_txt = {
        ['name'] = '7-7-7',
        ['text'] = {
            [1] = 'When sold, set ante to 8',
            [2] = '{C:gold}idea by @OfficerDepot{}'
        }
    },
    pos = {
        x = 2,
        y = 1
    },
    cost = 8,
    rarity = "noroomfo_mythic",
    blueprint_compat = false,
    eternal_compat = false,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    loc_vars = function(self, info_queue, card)
        return {vars = {}}
    end,

    calculate = function(self, card, context)
        if context.selling_self and not context.blueprint then
                return {
                    func = function()
                    G.GAME.round_resets.ante = card.ability.extra.ante_value
                    return true
                end,
                    message = "Ante set to " .. card.ability.extra.ante_value .. "!"
                }
        end
    end
}