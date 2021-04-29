# Prepare tick termination

worldborder set 59999000 0
worldborder add 1000 1

scoreboard players set #tick_terminate dom.value 0







# Execute player functions

execute as @a at @s run function dominexis:player/main







# Terminate linked entities if player doesn't exist

execute as @e[type=area_effect_cloud,tag=dom.entity.type.player_marker] run function dominexis:player/marker/terminate







# Accept deposits and warp players

execute as @e[type=area_effect_cloud,tag=dom.entity.type.piggy_bank] at @s run function dominexis:object/piggy_bank/main







# Manage TNT

execute as @e[type=tnt,tag=dom.entity.type.tnt] at @s run function dominexis:object/tnt







# Jevin head physics

execute as @e[type=area_effect_cloud,tag=dom.entity.type.jevin_head] at @s run function dominexis:object/jevin_head/main







# Spawn chunk generators if none are generating

execute if score #object_phase dom.value matches 0 as @r unless entity @s[predicate=!dominexis:dimension/overworld,predicate=!dominexis:dimension/tollbooth] at @s run function dominexis:object/chunk/spawn/main







# Generate chunks

execute if score #object_phase dom.value matches 1.. unless entity @e[type=area_effect_cloud,tag=dom.entity.type.chunk] run scoreboard players set #object_phase dom.value 0
execute if score #object_phase dom.value matches 1.. as @e[type=area_effect_cloud,tag=dom.entity.type.chunk,limit=1] run function dominexis:object/chunk/main