#
#   Migration File V1
#   
#   Purpose: To update the datapack up to this level, then apply new/updated configs or setup
#
#   Input: None
#


tellraw @a ["",{"text":"[Advanced Beacon Datapack]","bold":true,"color":"dark_blue"}," - Setup"]

# Apply last migration
#execute unless score version advancedbeacon.master matches 1.. run function advancedbeacon:meta/migrate/migration_v0

# Set the version
scoreboard players set version advancedbeacon.master 1

scoreboard objectives add advancedbeacon.id dummy
scoreboard players set next_id advancedbeacon.id 1

scoreboard players set config.effects.disable_bad_effects advancedbeacon.master 0
scoreboard players set config.effects.disable_particles advancedbeacon.master 0

return 0
scoreboard objectives add fpconflict.conflict_map dummy
scoreboard objectives add fancyui.master dummy
