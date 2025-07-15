SMODS.Joker{ --MrGamerMan
    name = "MrGamerMan",
    key = "mrgamerman",
    config = {
        extra = {
            chips = 0,
            var1 = 0
        }
    },
    loc_txt = {
        ['name'] = 'MrGamerMan',
        ['text'] = {
            [1] = 'Add the {C:blue}Chip{} value of {C:money}Played card{} to this Joker (currently #1# Chips)'
        }
    },
    pos = {
        x = 9,
        y = 0
    },
    cost = 6,
    rarity = "noroomfo_mrgamerman",
    blueprint_compat = true,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.chips}}
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and not context.blueprint then
            if context.other_card:get_id() == 2 then
                card.ability.extra.chips = (card.ability.extra.chips) + 2
            elseif context.other_card:get_id() == 3 then
                card.ability.extra.chips = (card.ability.extra.chips) + 3
            elseif context.other_card:get_id() == 4 then
                card.ability.extra.chips = (card.ability.extra.chips) + 4
            elseif context.other_card:get_id() == 5 then
                card.ability.extra.chips = (card.ability.extra.chips) + 5
            elseif context.other_card:get_id() == 6 then
                card.ability.extra.chips = (card.ability.extra.chips) + 6
            elseif context.other_card:get_id() == 7 then
                card.ability.extra.chips = (card.ability.extra.chips) + 7
            elseif context.other_card:get_id() == 8 then
                card.ability.extra.chips = (card.ability.extra.chips) + 8
            elseif context.other_card:get_id() == 9 then
                card.ability.extra.chips = (card.ability.extra.chips) + 9
            elseif context.other_card:get_id() == 10 then
                card.ability.extra.chips = (card.ability.extra.chips) + 10
            elseif context.other_card:get_id() == 11 then
                card.ability.extra.chips = (card.ability.extra.chips) + 11
            elseif context.other_card:get_id() == 12 then
                card.ability.extra.var1 = (card.ability.extra.var1) + 12
            elseif context.other_card:get_id() == 13 then
                card.ability.extra.chips = (card.ability.extra.chips) + 13
            elseif context.other_card:get_id() == 14 then
                card.ability.extra.chips = (card.ability.extra.chips) + 14
            end
        end
        if context.cardarea == G.jokers and context.joker_main then
                return {
                    chips = card.ability.extra.chips
                }
        end
    end
}