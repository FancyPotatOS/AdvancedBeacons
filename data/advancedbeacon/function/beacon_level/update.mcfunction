

function advancedbeacon:beacon_level/populate/set

execute if data storage advancedbeacon:data beacon{level:0b} if data storage advancedbeacon:data beacon.options{stop_if_beacon_level_zero:true} run return 0

execute store result score new_level advancedbeacon.master run data modify entity @s data.beacon.levels.level set from storage advancedbeacon:data beacon.level

# Not a new level, already updated
execute unless score new_level advancedbeacon.master matches 1 run return 0

# Reset
data modify entity @s data.beacon.levels.level set value 0b
data modify entity @s data.beacon.levels.primary set value []
data modify entity @s data.beacon.levels.secondary set value []

# Populate
data modify entity @s data.beacon.levels.level set from storage advancedbeacon:data beacon.level
data modify entity @s data.beacon.levels.primary set from storage advancedbeacon:data beacon.effects.primary
data modify entity @s data.beacon.levels.secondary set from storage advancedbeacon:data beacon.effects.secondary

execute if data entity @s data.beacon.levels.primary[0] run function advancedbeacon:slots/primary/initialize
execute if data entity @s data.beacon.levels.secondary[0] run function advancedbeacon:slots/secondary/initialize

execute unless data entity @s data.beacon.levels.primary[0] run function advancedbeacon:slots/primary/disable
execute unless data entity @s data.beacon.levels.secondary[0] run function advancedbeacon:slots/secondary/disable

function advancedbeacon:slots/confirm/update_state

