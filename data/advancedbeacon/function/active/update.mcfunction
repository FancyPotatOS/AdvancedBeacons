

# Beacon deactivated
data modify storage advancedbeacon:data beacon.options.stop_if_beacon_level_zero set value true
function advancedbeacon:beacon_level/update
data modify storage advancedbeacon:data beacon.options.stop_if_beacon_level_zero set value false
execute if data storage advancedbeacon:data beacon{level:0b} run return run function advancedbeacon:inactive/deactivate

