SMODS.Joker{ --Hearthead
    name = "Hearthead",
    key = "hearthead",
    config = {
        extra = {
            chips = 50
        }
    },
    loc_txt = {
        ['name'] = 'Hearthead',
        ['text'] = {
            [1] = 'Played cards with {C:tarot}Heart{} suit give {C:chips}+50{} Chips when scored'
        }
    },
    pos = {
        x = 8,
        y = 0
    },
    cost = 7,
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
        if context.individual and context.cardarea == G.play and not context.blueprint then
            if context.other_card:is_suit("Hearts") then
                return {
                    chips = card.ability.extra.chips
                }
            end
        end
    end
}