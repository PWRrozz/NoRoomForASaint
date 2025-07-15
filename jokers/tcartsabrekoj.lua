SMODS.Joker{ --Tcartsab Rekoj
    name = "Tcartsab Rekoj",
    key = "tcartsabrekoj",
    config = {
        extra = {
            jokercount = 0
        }
    },
    loc_txt = {
        ['name'] = 'Tcartsab Rekoj',
        ['text'] = {
            [1] = '{C:red}X1.5{} Mult for each {C:attention}Joker{} card',
            [2] = '{C:inactive}(Currently {C:red}+#1#{} Mult){}'
        }
    },
    pos = {
        x = 7,
        y = 0
    },
    cost = 5,
    rarity = "noroomfo_reversed",
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    loc_vars = function(self, info_queue, card)
        return {vars = {(#(G.jokers and G.jokers.cards or {})) * 1.5}}
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
                return {
                    Xmult = (#G.jokers.cards) * 1.5
                }
        end
    end
}
