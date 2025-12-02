

kill @s

execute at @p[tag=advancedbeacon.spawn_egg.spawner] run loot spawn ~ ~ ~ loot advancedbeacon:spawn_egg
execute at @p[tag=advancedbeacon.spawn_egg.spawner] as @e[type=item] if items entity @s contents shulker_spawn_egg run data modify entity @s PickupDelay set value 0

