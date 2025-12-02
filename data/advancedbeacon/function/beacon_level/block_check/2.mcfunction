

execute unless block ~-2 ~-2 ~-2 #advancedbeacon:beacon_material run return fail
execute unless block ~-1 ~-2 ~-2 #advancedbeacon:beacon_material run return fail
execute unless block ~ ~-2 ~-2 #advancedbeacon:beacon_material run return fail

execute unless blocks ~-2 ~-2 ~-2 ~ ~-2 ~-2 ~ ~-2 ~-2 all run return fail

execute unless blocks ~-2 ~-2 ~-2 ~2 ~-2 ~-2 ~-2 ~-2 ~-1 all run return fail
execute unless blocks ~-2 ~-2 ~-2 ~2 ~-2 ~ ~-2 ~-2 ~ all run return fail
execute unless blocks ~-2 ~-2 ~-2 ~2 ~-2 ~-2 ~-2 ~-2 ~-2 all run return fail

return 1

