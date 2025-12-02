

data modify entity @s data.beacon.active set value false

playsound minecraft:block.beacon.deactivate block @a[distance=..32] ~ ~ ~ 1 1 0.1

