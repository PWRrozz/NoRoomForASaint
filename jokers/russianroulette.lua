SMODS.Joker{ --Russian Roulette
    name = "Russian Roulette",
    key = "russianroulette",
    config = {
        extra = {
            odds = 8,
            set_dollars = 1,
            xchips = 5.5,
            Xmult = 5.5,
            j_joker = 0,
            var1 = 0
        }
    },
    loc_txt = {
        ['name'] = 'Russian Roulette',
        ['text'] = {
            [1] = '{X:blue,C:white}X5.5{} Chips',
            [2] = '{X:red,C:white}X5.5{} Mult',
            [3] = 'This joker kills 1 random {C:money}joker{} when',
            [4] = 'blind is selected',
            [5] = '{C:green} 1 in 8 chance {} to set money to {C:gold}$1{}'
        }
    },
    pos = {
        x = 6,
        y = 0
    },
    cost = 6,
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
        if context.setting_blind and not context.blueprint then
            if true then
                return {
                    func = function()
                local destructable_jokers = {}
                for i, joker in ipairs(G.jokers.cards) do
                    if joker ~= card and not joker.ability.eternal and not joker.getting_sliced then
                        table.insert(destructable_jokers, joker)
                    end
                end
                local target_joker = #destructable_jokers > 0 and pseudorandom_element(destructable_jokers, pseudoseed('destroy_joker')) or nil
                
                if target_joker then
                    target_joker.getting_sliced = true
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            target_joker:start_dissolve({G.C.RED}, nil, 1.6)
                            return true
                        end
                    }))
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Shot!", colour = G.C.RED})
                end
                    return true
                end,
                    extra = {
                        func = function()
                local destructable_jokers = {}
                for i, joker in ipairs(G.jokers.cards) do
                    if joker ~= card and not joker.ability.eternal and not joker.getting_sliced then
                        table.insert(destructable_jokers, joker)
                    end
                end
                local target_joker = #destructable_jokers > 0 and pseudorandom_element(destructable_jokers, pseudoseed('destroy_joker')) or nil
                
                if target_joker then
                    target_joker.getting_sliced = true
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            target_joker:start_dissolve({G.C.RED}, nil, 1.6)
                            return true
                        end
                    }))
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Shot!", colour = G.C.RED})
                end
                    return true
                end,
                        colour = G.C.RED
                        }
                ,
                    func = function()
                        if pseudorandom('group_0_b8a8561c') < G.GAME.probabilities.normal / card.ability.extra.odds then
                        SMODS.calculate_effect({func = function()
                local target_amount = card.ability.extra.set_dollars
                local current_amount = G.GAME.dollars
                local difference = target_amount - current_amount
                ease_dollars(difference)
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Set to $"..tostring(card.ability.extra.set_dollars), colour = G.C.MONEY})
                return true
            end}, card)
                    end
                        return true
                    end
                }
            end
        end
        if context.cardarea == G.jokers and context.joker_main then
                return {
                    x_chips = card.ability.extra.xchips,
                    extra = {
                        Xmult = card.ability.extra.Xmult
                        }
                }
        end
    end
}
