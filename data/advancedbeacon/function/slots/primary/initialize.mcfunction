
data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".beacon.state set value "enabled"
data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".beacon.effect set value "disabled"

data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_model_data".strings[0] set value "depressed"
data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_model_data".strings[1] set value "disabled"

execute if data entity @s data.beacon.levels.primary[0] run data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".beacon.effect set from entity @s data.beacon.levels.primary[0]
execute if data entity @s data.beacon.levels.primary[0] run data modify block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_model_data".strings[1] set from entity @s data.beacon.levels.primary[0]
