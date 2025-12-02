

scoreboard players set clock advancedbeacon.master 0

execute if data entity @s data.beacon{active:true} run return run function advancedbeacon:active/update
execute if data entity @s data.beacon{active:false} run return run function advancedbeacon:inactive/update

