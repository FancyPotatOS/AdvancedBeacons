

data modify storage advancedbeacon:data beacon.effects.primary append value "slow_falling"

data modify storage advancedbeacon:data beacon.effects.primary append value "jump_boost"
data modify storage advancedbeacon:data beacon.effects.primary append value "resistance"


execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.primary append value "mining_fatigue"
execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.primary append value "levitation"

