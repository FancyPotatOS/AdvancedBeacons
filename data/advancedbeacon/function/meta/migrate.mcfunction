
# Ensure the master scoreboard exists
scoreboard objectives add advancedbeacon.master dummy

# Apply migration if required
execute unless score version advancedbeacon.master matches 1.. run function advancedbeacon:meta/migrations/latest_version
