
data modify storage advancedbeacon:data beacon.effects set value {primary:[],secondary:[]}

function advancedbeacon:beacon_level/get
execute store result score beacon_level advancedbeacon.master run data get storage advancedbeacon:data beacon.level

execute if score beacon_level advancedbeacon.master matches 1.. run function advancedbeacon:beacon_level/populate/1
execute if score beacon_level advancedbeacon.master matches 2.. run function advancedbeacon:beacon_level/populate/2
execute if score beacon_level advancedbeacon.master matches 3.. run function advancedbeacon:beacon_level/populate/3
execute if score beacon_level advancedbeacon.master matches 4.. run function advancedbeacon:beacon_level/populate/4
execute if score beacon_level advancedbeacon.master matches 5.. run function advancedbeacon:beacon_level/populate/5
