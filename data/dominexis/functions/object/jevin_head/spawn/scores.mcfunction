# Assign position

data modify storage dominexis:data tag.Pos set from entity @s Pos
execute store result score @s dom.x run data get storage dominexis:data tag.Pos[0] 64
execute store result score @s dom.y run data get storage dominexis:data tag.Pos[1] 64
execute store result score @s dom.z run data get storage dominexis:data tag.Pos[2] 64

scoreboard players set @s dom.motion_x 0
scoreboard players set @s dom.motion_z 0
scoreboard players set @s dom.motion_y 0

execute at @s run teleport @s ~ ~-0.475 ~







# Assign rotation

scoreboard players set @s dom.yaw 0
scoreboard players set @s dom.pitch 0
scoreboard players set @s dom.motion_yaw 0
scoreboard players set @s dom.motion_pitch 0