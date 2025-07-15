SMODS.Joker{ --Oinac
    name = "Oinac",
    key = "oinac",
    config = {
        extra = {
            xmultvar = 1
        }
    },
    loc_txt = {
        ['name'] = 'Oinac',
        ['text'] = {
            [1] = 'This Joker gains {X:red,C:white}X0.5{} Mult',
            [2] = 'when a {C:attention}Numbered{} card is destroyed',
            [3] = '{C:inactive}(Currently {X:red,C:white}X#1#{} Mult){}'
        }
    },
    pos = {
        x = 2,
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
        return {vars = {card.ability.extra.xmultvar}}
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main then
                return {
                    Xmult = card.ability.extra.xmultvar
                }
        end
        if context.remove_playing_cards and not context.blueprint then
            if (function()
    for k, removed_card in ipairs(context.removed) do
        if (removed_card:get_id() == 2 or removed_card:get_id() == 4 or removed_card:get_id() == 6 or removed_card:get_id() == 8 or removed_card:get_id() == 10) then
            return true
        end
    end
    return false
end)() then
                return {
                    func = function()
                    card.ability.extra.xmultvar = (card.ability.extra.xmultvar) + 0.5
                    return true
                end
                }
            elseif (function()
    for k, removed_card in ipairs(context.removed) do
        if (removed_card:get_id() == 14 or removed_card:get_id() == 3 or removed_card:get_id() == 5 or removed_card:get_id() == 7 or removed_card:get_id() == 9) then
            return true
        end
    end
    return false
end)() then
                return {
                    func = function()
                    card.ability.extra.xmultvar = (card.ability.extra.xmultvar) + 0.5
                    return true
                end
                }
            end
        end
    end
}
