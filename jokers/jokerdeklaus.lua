SMODS.Joker{ --Joker de Klaus
    name = "Joker de Klaus",
    key = "jokerdeklaus",
    config = {
        extra = {
            rounx = 1.5
        }
    },
    loc_txt = {
        ['name'] = 'Joker de Klaus',
        ['text'] = {
            [1] = 'This joker gains {X:red,C:white}X1.5{} Mult when blind is defeated',
            [2] = '(Currently X#1# {C:hearts}mult{})',
            [3] = '{C:dark_edition}Idea by @Siva{}'
        }
    },
    pos = {
        x = 1,
        y = 1
    },
    cost = 8,
    rarity = "noroomfo_mrgamerman",
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.rounx}}
    end,

    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
                return {
                    func = function()
                    card.ability.extra.rounx = (card.ability.extra.rounx) + 1.5
                    return true
                end
                }
        end
        if context.cardarea == G.jokers and context.joker_main then
                return {
                    Xmult = card.ability.extra.rounx
                }
        end
    end
}
