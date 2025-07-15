SMODS.Joker{ --JudgeTV+
    name = "JudgeTV+",
    key = "judgetv",
    config = {
        extra = {
            j_joker = 0
        }
    },
    loc_txt = {
        ['name'] = 'JudgeTV+',
        ['text'] = {
            [1] = 'Create a random {C:attention}Joker{} at the end of shop',
            [2] = '(only on JudgeTV+)'
        }
    },
    pos = {
        x = 0,
        y = 1
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
        card:add_sticker('rental', true)
    end,

    calculate = function(self, card, context)
        if context.ending_shop and not context.blueprint then
                return {
                    func = function()
            local created_joker = false
                if #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit then
                    created_joker = true
                    G.GAME.joker_buffer = G.GAME.joker_buffer + 1
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            local joker_card = create_card('Joker', G.jokers, nil, nil, nil, nil, nil, 'joker_forge_random')
                            joker_card:add_to_deck()
                            G.jokers:emplace(joker_card)
                            G.GAME.joker_buffer = 0
                            return true
                        end
                    }))
                end
            if created_joker then
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_plus_joker'), colour = G.C.BLUE})
            end
            return true
        end
                }
        end
    end
}