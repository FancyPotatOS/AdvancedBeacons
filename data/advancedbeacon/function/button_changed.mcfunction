
data modify storage advancedbeacon:data beacon.current_selected set value {primary:"",secondary:""}

data modify storage advancedbeacon:data beacon.current_selected.primary set from entity @s data.beacon.levels.selected.primary
execute store success storage advancedbeacon:data beacon.button_changed_success int 1 run data modify storage advancedbeacon:data beacon.current_selected.primary set from block ~ ~ ~ Items[{Slot:10b}].components."minecraft:custom_data".beacon.effect
execute if data storage advancedbeacon:data beacon{button_changed_success:1} run return 1

data modify storage advancedbeacon:data beacon.current_selected.secondary set from entity @s data.beacon.levels.selected.secondary
execute store success storage advancedbeacon:data beacon.button_changed_success int 1 run data modify storage advancedbeacon:data beacon.current_selected.secondary set from block ~ ~ ~ Items[{Slot:12b}].components."minecraft:custom_data".beacon.effect

execute if data storage advancedbeacon:data beacon{button_changed_success:1} run return 1

return fail
