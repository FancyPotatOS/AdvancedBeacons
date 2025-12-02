

execute unless block ~-4 ~-4 ~-4 #advancedbeacon:beacon_material run return fail
execute unless block ~-3 ~-4 ~-4 #advancedbeacon:beacon_material run return fail
execute unless block ~-2 ~-4 ~-4 #advancedbeacon:beacon_material run return fail

execute unless blocks ~-4 ~-4 ~-4 ~-2 ~-4 ~-4 ~-1 ~-4 ~-4 all run return fail

execute unless blocks ~-4 ~-4 ~-4 ~ ~-4 ~-4 ~ ~-4 ~-4 all run return fail

# Line groups
execute unless blocks ~-4 ~-4 ~-4 ~4 ~-4 ~-4 ~-4 ~-4 ~-3 all run return fail
execute unless blocks ~-4 ~-4 ~-4 ~4 ~-4 ~-3 ~-4 ~-4 ~-2 all run return fail
execute unless blocks ~-4 ~-4 ~-4 ~4 ~-4 ~-1 ~-4 ~-4 ~ all run return fail

# Last line
execute unless blocks ~-4 ~-4 ~-4 ~4 ~-4 ~-4 ~-4 ~-4 ~4 all run return fail

return 1

