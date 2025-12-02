

data modify storage advancedbeacon:data beacon set value {level:0b}

execute unless function advancedbeacon:beacon_level/block_check/1 run return 0
data modify storage advancedbeacon:data beacon.level set value 1b
execute unless function advancedbeacon:beacon_level/block_check/2 run return 0
data modify storage advancedbeacon:data beacon.level set value 2b
execute unless function advancedbeacon:beacon_level/block_check/3 run return 0
data modify storage advancedbeacon:data beacon.level set value 3b
execute unless function advancedbeacon:beacon_level/block_check/4 run return 0
data modify storage advancedbeacon:data beacon.level set value 4b
execute unless function advancedbeacon:beacon_level/block_check/5 run return 0
data modify storage advancedbeacon:data beacon.level set value 5b

