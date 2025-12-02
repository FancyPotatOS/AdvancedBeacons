

# Initial
execute unless block ~-5 ~-5 ~-5 #advancedbeacon:beacon_material run return fail
execute unless block ~-4 ~-5 ~-5 #advancedbeacon:beacon_material run return fail

# First line
execute unless blocks ~-5 ~-5 ~-5 ~-4 ~-5 ~-5 ~-3 ~-5 ~-5 all run return fail
execute unless blocks ~-5 ~-5 ~-5 ~-2 ~-5 ~-5 ~-1 ~-5 ~-5 all run return fail
execute unless blocks ~-5 ~-5 ~-5 ~ ~-5 ~-5 ~ ~-5 ~-5 all run return fail

# Line groups
execute unless blocks ~-5 ~-5 ~-5 ~5 ~-5 ~-5 ~-5 ~-5 ~-4 all run return fail
execute unless blocks ~-5 ~-5 ~-5 ~5 ~-5 ~-4 ~-5 ~-5 ~-3 all run return fail
execute unless blocks ~-5 ~-5 ~-5 ~5 ~-5 ~-2 ~-5 ~-5 ~-1 all run return fail
execute unless blocks ~-5 ~-5 ~-5 ~5 ~-5 ~ ~-5 ~-5 ~ all run return fail

return 1

