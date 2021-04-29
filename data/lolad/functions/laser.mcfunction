tag @s add laser_target
effect give @a[distance=..50] instant_damage 1 0 true
execute as @a[distance=..50] at @s facing entity @e[type=wandering_trader,tag=laser_target,limit=1] eyes run function lolad:laserbeam
tag @s remove laser_target
scoreboard players remove @s laser 1