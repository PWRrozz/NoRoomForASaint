SMODS.Joker{ --Error!
    name = "Error!",
    key = "error",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Error!',
        ['text'] = {
            [1] = 'The cards in first {C:red}Discard{} of each round get destroyed.'
        }
    },
    pos = {
        x = 4,
        y = 0
    },
    cost = 5,
    rarity = "noroomfo_deal_with_the_devil",
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    loc_vars = function(self, info_queue, card)
        return {vars = {}}
    end,

    set_ability = function(self, card, initial)
        card:set_eternal(true)
    end,

    calculate = function(self, card, context)
        if context.discard and not context.blueprint then
            if G.GAME.current_round.discards_used <= 0 then
                return {
                    remove = true,
                  message = "Destroyed!"
                }
            end
        end
    end
}