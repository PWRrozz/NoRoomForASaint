SMODS.Joker{ --Clairvoyant
    name = "Clairvoyant",
    key = "clairvoyant",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Clairvoyant',
        ['text'] = {
            [1] = 'All {C:tarot}Spectral{}{} cards and {C:enhanced}Spectral Packs{}',
            [2] = 'in the shop are {C:attention}free{}'
        }
    },
    pos = {
        x = 5,
        y = 0
    },
    cost = 8,
    rarity = "noroomfo_reversed",
    blueprint_compat = false,
    eternal_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',

    loc_vars = function(self, info_queue, card)
        return {vars = {}}
    end,

    add_to_deck = function(self, card, from_debuff)
        G.E_MANAGER:add_event(Event({
    func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true
    end
}))
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.E_MANAGER:add_event(Event({
    func = function()
        for k, v in pairs(G.I.CARD) do
            if v.set_cost then v:set_cost() end
        end
        return true
    end
}))
    end
}
