# Set motion according to scores

data modify storage dominexis:data tag set value {Motion:[0.0d,-2.0d,0.0d]}
execute store result storage dominexis:data tag.Motion[0] double 0.015625 run scoreboard players get @s dom.motion_x
execute store result storage dominexis:data tag.Motion[2] double 0.015625 run scoreboard players get @s dom.motion_z
data modify entity @s {} merge from storage dominexis:data tag







# Explode if a block was hit

execute unless block ~ ~-0.1 ~ air run data merge entity @s {Fuse:0s}