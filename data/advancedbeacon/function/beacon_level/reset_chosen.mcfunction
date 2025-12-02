
data modify entity @s data.beacon.levels.primary set from entity @s data.beacon.levels.selected.primary_list
data modify entity @s data.beacon.levels.secondary set from entity @s data.beacon.levels.selected.secondary_list

data modify block ~ ~ ~ Items[{Slot:10b}] set from entity @s data.beacon.levels.selected.primary_item
data modify block ~ ~ ~ Items[{Slot:12b}] set from entity @s data.beacon.levels.selected.secondary_item

function advancedbeacon:slots/application/disable

