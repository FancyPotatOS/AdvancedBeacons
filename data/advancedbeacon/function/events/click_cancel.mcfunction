

scoreboard players set successful_call fancyui.master 0

# Check if button is enabled
execute if items entity @p[tag=fancyui.button.clicker] player.cursor *[minecraft:custom_data~{beacon:{state:"disabled"}}] run return 0

execute at @s run function advancedbeacon:slots/cancel/click

function fancyui:manual_placement

