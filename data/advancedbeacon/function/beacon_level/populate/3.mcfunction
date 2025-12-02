

data modify storage advancedbeacon:data beacon.effects.primary append value "glowing"
data modify storage advancedbeacon:data beacon.effects.primary append value "strength"

execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.primary append value "oozing"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.primary append value "infested"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.primary append value "weaving"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.primary append value "wind_charged"

