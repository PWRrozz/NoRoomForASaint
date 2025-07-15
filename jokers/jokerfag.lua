SMODS.Joker{ --Joker Fag
    name = "Joker Fag",
    key = "jokerfag",
    config = {
        extra = {
            mult = 8
        }
    },
    loc_txt = {
        ['name'] = 'Joker Fag',
        ['text'] = {
            [1] = '{C:mult}+8{} Mult'
        }
    },
    pos = {
        x = 1,
        y = 0
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    loc_vars = function(self, info_queue, card)
        return {vars = {}}
    end,

    set_ability = function(self, card, initial)
        card:add_sticker('perishable', true)
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
                return {
                    mult = card.ability.extra.mult
                }
        end
    end
}
