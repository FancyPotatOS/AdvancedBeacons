
scoreboard players set successful_call fancyui.master 0

tag @s add advancedbeacon.to_kill

execute as @e[type=minecraft:item,distance=..1] if items entity @s contents minecraft:barrel[minecraft:custom_name="Advanced Beacon"] run tag @s add advancedbeacon.target_barrel_item

execute as @n[type=minecraft:item,tag=advancedbeacon.target_barrel_item] at @s run function advancedbeacon:breaking/replace_with_beacon

execute as @e[type=minecraft:block_display] if score @s advancedbeacon.id = @n[type=marker,tag=advancedbeacon.to_kill] advancedbeacon.id run kill @s

execute if block ~1 ~ ~ minecraft:light run setblock ~1 ~ ~ minecraft:air
execute if block ~-1 ~ ~ minecraft:light run setblock ~-1 ~ ~ minecraft:air
execute if block ~ ~1 ~ minecraft:light run setblock ~ ~1 ~ minecraft:air
execute if block ~ ~-1 ~ minecraft:light run setblock ~ ~-1 ~ minecraft:air
execute if block ~ ~ ~1 minecraft:light run setblock ~ ~ ~1 minecraft:air
execute if block ~ ~ ~-1 minecraft:light run setblock ~ ~ ~-1 minecraft:air

kill @s

