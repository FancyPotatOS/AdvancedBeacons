

data modify storage advancedbeacon:data beacon.swapped_item set value {}
data modify storage advancedbeacon:data beacon.swapped_item set from block ~ ~ ~ Items[{Slot:16b}]

item replace block ~ ~ ~ container.16 from entity @n[tag=fancyui.button.clicker] player.cursor


function advancedbeacon:beacon_level/reset_chosen
function advancedbeacon:slots/application/disable


item replace entity @n[tag=fancyui.button.clicker] player.cursor from block ~ ~ ~ container.16
item replace block ~ ~ ~ container.16 with minecraft:air

summon item ~ ~0.5 ~ {Age:0,Item:{id:"minecraft:dirt",count:1b},Tags:["advancedbeacon.rejected_item"]}

data modify entity @n[tag=advancedbeacon.rejected_item] Item set from storage advancedbeacon:data beacon.swapped_item
tag @n[tag=advancedbeacon.rejected_item] remove advancedbeacon.rejected_item


function fancyui:manual_placement

