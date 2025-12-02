
advancement revoke @s only advancedbeacon:placed

tag @s add advancedbeacon.spawn_egg.spawner

execute as @e[type=minecraft:armor_stand,tag=advancedbeacon.spawn_egg] at @s run function advancedbeacon:placement/place

tag @s remove advancedbeacon.spawn_egg.spawner

