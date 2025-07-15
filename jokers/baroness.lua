SMODS.Joker{ --Baroness
    name = "Baroness",
    key = "baroness",
    config = {
        extra = {
            Xmult = 1.5
        }
    },
    loc_txt = {
        ['name'] = 'Baroness',
        ['text'] = {
            [1] = 'Each {C:orange}Queen{} held in hand gives {X:red,C:white}X1.5{} Mult'
        }
    },
    pos = {
        x = 3,
        y = 0
    },
    cost = 8,
    rarity = "noroomfo_reversed",
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    loc_vars = function(self, info_queue, card)
        return {vars = {}}
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.hand and not context.end_of_round and not context.blueprint then
            if context.other_card:get_id() == 12 then
                return {
                    Xmult = card.ability.extra.Xmult
                }
            end
        end
    end
}
