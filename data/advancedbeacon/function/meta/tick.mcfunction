

scoreboard players add clock advancedbeacon.master 1
scoreboard players add effect_clock advancedbeacon.master 1

execute if score clock advancedbeacon.master matches 20.. as @e[type=marker,tag=advancedbeacon.beacon] at @s run function advancedbeacon:update

execute if score effect_clock advancedbeacon.master matches 200.. as @e[type=marker,tag=advancedbeacon.beacon] at @s run function advancedbeacon:active/effect/give

execute as @e[type=marker,tag=advancedbeacon.beacon] if data entity @s data.beacon{active:true} at @s if predicate advancedbeacon:random_active_sound run playsound minecraft:block.beacon.ambient block @a[distance=..8] ~ ~ ~ 1 1
execute as @e[type=marker,tag=advancedbeacon.beacon] if data entity @s data.beacon{active:false} at @s if predicate advancedbeacon:random_inactive_sound run playsound minecraft:block.beacon.ambient block @a[distance=..8] ~ ~ ~ 0.5 0.3333
