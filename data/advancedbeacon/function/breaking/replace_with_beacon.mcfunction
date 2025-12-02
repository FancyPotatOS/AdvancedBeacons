
tag @s remove advancedbeacon.target_barrel_item

loot spawn ~ ~ ~ loot advancedbeacon:spawn_egg

tag @s add advancedbeacon.beacon.item

execute as @e[type=item,distance=..0.1] if items entity @s contents minecraft:shulker_spawn_egg if data entity @s Item.components."minecraft:entity_data".data.advancedbeacon{type:"spawn_egg"} run tag @s add advancedbeacon.beacon.template_loot_item

execute as @n[type=item,tag=advancedbeacon.beacon.template_loot_item] run data modify entity @s Item.count set from entity @n[type=item,tag=advancedbeacon.beacon.item] Item.count

kill @s
