
scoreboard players set effect_clock advancedbeacon.master 0

# effect give @a[distance=..DISTANCE] minecraft:EFFECT 5 POTENCY true
data modify storage advancedbeacon:data macro set value {range:0,effect:0,potency:0}

# # Primary
# Range
scoreboard players set beacon_level_range_scale advancedbeacon.master 15
execute store result score range advancedbeacon.master run data get entity @s data.beacon.levels.level
scoreboard players operation range advancedbeacon.master *= beacon_level_range_scale advancedbeacon.master
scoreboard players add range advancedbeacon.master 15
execute store result storage advancedbeacon:data macro.range int 1 run scoreboard players get range advancedbeacon.master
# Effect
data modify storage advancedbeacon:data macro.effect set from entity @s data.beacon.levels.selected.primary
# Potency
data modify storage advancedbeacon:data macro.potency set value 0
data modify storage advancedbeacon:data macro.effect_check set from storage advancedbeacon:data macro.effect
execute store success storage advancedbeacon:data macro.effect_not_duplicated int 1 run data modify storage advancedbeacon:data macro.effect_check set from entity @s data.beacon.levels.selected.secondary
execute if data storage advancedbeacon:data macro{effect_not_duplicated:0} run data modify storage advancedbeacon:data macro.potency set value 1

# Reset scoreboard values
scoreboard players reset range advancedbeacon.master
scoreboard players reset beacon_level_range_scale advancedbeacon.master

# Macro run
execute unless data storage advancedbeacon:data macro{effect:"none"} run function advancedbeacon:active/effect/macro_effect_command with storage advancedbeacon:data macro

# No secondary effect if primary potency is 2
execute if data storage advancedbeacon:data macro{effect_not_duplicated:0} run return 0

# # Secondary
# Range is done
# Effect
data modify storage advancedbeacon:data macro.effect set from entity @s data.beacon.levels.selected.secondary
# Potency
data modify storage advancedbeacon:data macro.potency set value 0

# Macro run
execute unless data storage advancedbeacon:data macro{effect:"none"} run function advancedbeacon:active/effect/macro_effect_command with storage advancedbeacon:data macro
