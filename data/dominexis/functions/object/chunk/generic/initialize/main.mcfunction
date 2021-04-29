# Move to corner of chunk

data modify storage dominexis:data tag.Pos set from entity @s Pos
execute store result storage dominexis:data tag.Pos[0] double 16 run data get storage dominexis:data tag.Pos[0] 0.0625
execute store result storage dominexis:data tag.Pos[2] double 16 run data get storage dominexis:data tag.Pos[2] 0.0625
data modify entity @s Pos set from storage dominexis:data tag.Pos

execute store result score #x dom.value run data get storage dominexis:data tag.Pos[0]
execute store result score #z dom.value run data get storage dominexis:data tag.Pos[2]







# Initialize dimension-specific chunks

execute if entity @s[tag=dom.entity.property.overworld] run function dominexis:object/chunk/overworld/initialize
execute if entity @s[tag=dom.entity.property.tollbooth] run function dominexis:object/chunk/tollbooth/initialize







# Initialize chunk position values

scoreboard players set #position_x dom.value 0
scoreboard players set #position_z dom.value 0

scoreboard players set #layer_0_x dom.value 0
scoreboard players set #layer_1_x dom.value 0
scoreboard players set #layer_0_z dom.value 0
scoreboard players set #layer_1_z dom.value 0







# Initialize point variables

scoreboard players set #point_channel dom.value 0







# Add initialized tag

tag @s add dom.entity.property.initialized