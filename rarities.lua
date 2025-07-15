SMODS.Rarity {
    key = "deal_with_the_devil",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.2,
    badge_colour = HEX('8b572a'),
    loc_txt = {
        name = "Deal With The Devil"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "reversed",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.32,
    badge_colour = HEX('b8e986'),
    loc_txt = {
        name = "Reversed"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "mrgamerman",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.1,
    badge_colour = HEX('0078ff'),
    loc_txt = {
        name = "MrGamerMan"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "mythic",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.01,
    badge_colour = HEX('f8e71c'),
    loc_txt = {
        name = "Mythic"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}