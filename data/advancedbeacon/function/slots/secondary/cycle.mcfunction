

data modify storage advancedbeacon:data beacon.swapped_item set value {}
data modify storage advancedbeacon:data beacon.swapped_item set from block ~ ~ ~ Items[{Slot:12b}]

item replace block ~ ~ ~ container.12 from entity @n[tag=fancyui.button.clicker] player.cursor


data modify entity @s data.beacon.levels.secondary append from entity @s data.beacon.levels.secondary[0]
data remove entity @s data.beacon.levels.secondary[0]

function advancedbeacon:slots/secondary/initialize

function advancedbeacon:slots/application/disable
execute if function advancedbeacon:button_changed run function advancedbeacon:slots/application/enable


item replace entity @n[tag=fancyui.button.clicker] player.cursor from block ~ ~ ~ container.12
item replace block ~ ~ ~ container.12 with minecraft:air

summon item ~ ~0.5 ~ {Age:0,Item:{id:"minecraft:dirt",count:1b},Tags:["advancedbeacon.rejected_item"]}

data modify entity @n[tag=advancedbeacon.rejected_item] Item set from storage advancedbeacon:data beacon.swapped_item
tag @n[tag=advancedbeacon.rejected_item] remove advancedbeacon.rejected_item

function fancyui:manual_placement

