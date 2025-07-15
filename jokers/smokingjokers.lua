SMODS.Joker{ --Smoking Jokers
    name = "Smoking Jokers",
    key = "smokingjokers",
    config = {
        extra = {
            j_noroomfo_jokerfag = 0
        }
    },
    loc_txt = {
        ['name'] = 'Smoking Jokers',
        ['text'] = {
            [1] = 'When blind is selected, create a {C:dark_edition}Negative{} {C:spectral}Perishable{} {C:gold}Joker Fag{}'
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    cost = 4,
    rarity = "noroomfo_deal_with_the_devil",
    blueprint_compat = false,
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
                return {
                    func = function()
            local created_joker = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        local joker_card = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_noroomfo_jokerfag')
                        joker_card:set_edition("e_negative", true)
                        joker_card:add_to_deck()
                        G.jokers:emplace(joker_card)
                        return true
                    end
                }))
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE})
            end
            return true
        end
                }
        end
    end
}
