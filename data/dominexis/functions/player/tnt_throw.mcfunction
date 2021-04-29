# Spawn TNT marker

summon area_effect_cloud ~ ~ ~ {Tags:["dom.entity","dom.entity.type.tnt","dom.entity.target"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}







# Assign random motion to TNT

scoreboard players set #input dom.value 129
function dominexis:generic/rng
scoreboard players remove #output dom.value 64
scoreboard players operation #math_01 dom.value = #output dom.value
scoreboard players operation #motion_x dom.value = #output dom.value
function dominexis:generic/rng
scoreboard players remove #output dom.value 64
scoreboard players operation #math_02 dom.value = #output dom.value
scoreboard players operation #motion_z dom.value = #output dom.value







# Calculate position of TNT

scoreboard players set #math_00 dom.value 8640
scoreboard players operation #math_00 dom.value -= @s dom.y
scoreboard players operation #math_00 dom.value /= #2 dom.value

scoreboard players operation #math_01 dom.value *= #math_00 dom.value
scoreboard players operation #math_01 dom.value /= #64 dom.value
scoreboard players operation #math_01 dom.value *= #-1 dom.value
scoreboard players operation #math_01 dom.value += @s dom.x
scoreboard players operation #math_02 dom.value *= #math_00 dom.value
scoreboard players operation #math_02 dom.value /= #64 dom.value
scoreboard players operation #math_02 dom.value *= #-1 dom.value
scoreboard players operation #math_02 dom.value += @s dom.z







# Offset position

data modify storage dominexis:data tag set value {Pos:[0.0d,135.0d,0.0d]}
execute store result storage dominexis:data tag.Pos[0] double 0.015625 run scoreboard players get #math_01 dom.value
execute store result storage dominexis:data tag.Pos[2] double 0.015625 run scoreboard players get #math_02 dom.value
data modify entity @e[type=area_effect_cloud,tag=dom.entity.target,limit=1] {} merge from storage dominexis:data tag

execute as @e[type=area_effect_cloud,tag=dom.entity.target,limit=1] at @s run summon tnt ~ 135 ~ {Tags:["dom.entity","dom.entity.type.tnt","dom.entity.target"],Fuse:1000s,NoGravity:1b,Motion:[0.0d,-2.0d,0.0d]}







# Push motion scores

scoreboard players operation @e[type=tnt,tag=dom.entity.target,limit=1] dom.motion_x = #motion_x dom.value
scoreboard players operation @e[type=tnt,tag=dom.entity.target,limit=1] dom.motion_z = #motion_z dom.value







# Remove target tag

tag @e[type=tnt] remove dom.entity.target







# Kill area effect cloud

kill @e[type=area_effect_cloud,tag=dom.entity.target,limit=1]