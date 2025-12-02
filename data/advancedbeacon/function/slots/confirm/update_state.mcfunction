

data modify entity @s data.beacon.levels.selected.primary set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".beacon.effect
data modify entity @s data.beacon.levels.selected.secondary set from block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".beacon.effect

data modify entity @s data.beacon.levels.selected.primary_list set from entity @s data.beacon.levels.primary
data modify entity @s data.beacon.levels.selected.secondary_list set from entity @s data.beacon.levels.secondary

data modify entity @s data.beacon.levels.selected.primary_item set from block ~ ~ ~ Items[{Slot:10b}]
data modify entity @s data.beacon.levels.selected.secondary_item set from block ~ ~ ~ Items[{Slot:12b}]


