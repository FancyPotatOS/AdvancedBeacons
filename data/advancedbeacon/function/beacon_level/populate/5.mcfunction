
data modify storage advancedbeacon:data beacon.effects.primary append value "health_boost"
data modify storage advancedbeacon:data beacon.effects.primary append value "saturation"
data modify storage advancedbeacon:data beacon.effects.primary append value "conduit_power"
data modify storage advancedbeacon:data beacon.effects.primary append value "dolphins_grace"

execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.primary append value "wither"


data modify storage advancedbeacon:data beacon.effects.secondary append value "health_boost"
data modify storage advancedbeacon:data beacon.effects.secondary append value "saturation"
data modify storage advancedbeacon:data beacon.effects.secondary append value "conduit_power"
data modify storage advancedbeacon:data beacon.effects.secondary append value "dolphins_grace"

execute unless score config.effects.disable_bad_effects advancedbeacon.master matches 1 run data modify storage advancedbeacon:data beacon.effects.secondary append value "wither"
