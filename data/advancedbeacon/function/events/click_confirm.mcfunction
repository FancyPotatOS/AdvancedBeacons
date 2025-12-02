

scoreboard players set successful_call fancyui.master 0

# Check if button is enabled
execute if items entity @p[tag=fancyui.button.clicker] player.cursor *[minecraft:custom_data~{beacon:{state:"disabled"}}] run return 0

execute at @s run function advancedbeacon:slots/confirm/click
playsound minecraft:block.beacon.power_select block @a[distance=..32] ~ ~ ~ 1 1 0.1

