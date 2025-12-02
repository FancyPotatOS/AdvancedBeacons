

data modify storage advancedbeacon:data beacon.swapped_item set value {}
data modify storage advancedbeacon:data beacon.swapped_item set from block ~ ~ ~ Items[{Slot:10b}]

item replace block ~ ~ ~ container.10 from entity @n[tag=fancyui.button.clicker] player.cursor


data modify entity @s data.beacon.levels.primary append from entity @s data.beacon.levels.primary[0]
data remove entity @s data.beacon.levels.primary[0]

function advancedbeacon:slots/primary/initialize

function advancedbeacon:slots/application/disable
execute if function advancedbeacon:button_changed run function advancedbeacon:slots/application/enable


item replace entity @n[tag=fancyui.button.clicker] player.cursor from block ~ ~ ~ container.10
item replace block ~ ~ ~ container.10 with minecraft:air

summon item ~ ~0.5 ~ {Age:0,Item:{id:"minecraft:dirt",count:1b},Tags:["advancedbeacon.rejected_item"]}

data modify entity @n[tag=advancedbeacon.rejected_item] Item set from storage advancedbeacon:data beacon.swapped_item
tag @n[tag=advancedbeacon.rejected_item] remove advancedbeacon.rejected_item

function fancyui:manual_placement

