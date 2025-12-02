

data modify storage advancedbeacon:data beacon.effects.primary append value "fire_resistance"
data modify storage advancedbeacon:data beacon.effects.primary append value "water_breathing"
data modify storage advancedbeacon:data beacon.effects.primary append value "night_vision"
data modify storage advancedbeacon:data beacon.effects.primary append value "invisibility"
data modify storage advancedbeacon:data beacon.effects.primary append value "regeneration"

execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.primary append value "poison"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.primary append value "blindness"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.primary append value "darkness"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.primary append value "nausea"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.primary append value "hunger"


# Now we add some secondary effects

# 1
data modify storage advancedbeacon:data beacon.effects.secondary append value "speed"
data modify storage advancedbeacon:data beacon.effects.secondary append value "haste"

# 2
data modify storage advancedbeacon:data beacon.effects.secondary append value "slow_falling"
data modify storage advancedbeacon:data beacon.effects.secondary append value "jump_boost"
data modify storage advancedbeacon:data beacon.effects.secondary append value "resistance"

data modify storage advancedbeacon:data beacon.effects.secondary append value "mining_fatigue"
data modify storage advancedbeacon:data beacon.effects.secondary append value "levitation"

# 3
data modify storage advancedbeacon:data beacon.effects.secondary append value "glowing"
data modify storage advancedbeacon:data beacon.effects.secondary append value "strength"

execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.secondary append value "oozing"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.secondary append value "infested"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.secondary append value "weaving"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.secondary append value "wind_charged"

# 4
data modify storage advancedbeacon:data beacon.effects.secondary append value "fire_resistance"
data modify storage advancedbeacon:data beacon.effects.secondary append value "water_breathing"
data modify storage advancedbeacon:data beacon.effects.secondary append value "night_vision"
data modify storage advancedbeacon:data beacon.effects.secondary append value "invisibility"
data modify storage advancedbeacon:data beacon.effects.secondary append value "regeneration"

execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.secondary append value "poison"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.secondary append value "blindness"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.secondary append value "darkness"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.secondary append value "nausea"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.secondary append value "hunger"

