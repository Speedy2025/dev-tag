# Generate list of points

data remove storage dominexis:data tag

scoreboard players set #list_x dom.value -1
scoreboard players set #list_y dom.value 0
scoreboard players set #list_z dom.value -1

scoreboard players operation #channel_id dom.value *= #10 dom.value

scoreboard players operation #chunk_x dom.value = #x dom.value
scoreboard players operation #chunk_z dom.value = #z dom.value
scoreboard players operation #chunk_x dom.value /= #channel_size dom.value
scoreboard players operation #chunk_z dom.value /= #channel_size dom.value
scoreboard players operation #chunk_x dom.value *= #channel_size dom.value
scoreboard players operation #chunk_z dom.value *= #channel_size dom.value

function dominexis:object/chunk/generic/point/channel/list







# Rearrange lists

data modify storage dominexis:data tag.poi append from storage dominexis:data tag.list[12]
data modify storage dominexis:data tag.poi append from storage dominexis:data tag.list[13]
data modify storage dominexis:data tag.poi append from storage dominexis:data tag.list[14]

data modify storage dominexis:data tag.list_0 set from storage dominexis:data tag.list
data modify storage dominexis:data tag.list_1 set from storage dominexis:data tag.list
data modify storage dominexis:data tag.list_2 set from storage dominexis:data tag.list

data remove storage dominexis:data tag.list_0[12]
data remove storage dominexis:data tag.list_1[13]
data remove storage dominexis:data tag.list_2[14]







# Compute minimum distance

scoreboard players operation #minimum_distance dom.value = #channel_size dom.value
scoreboard players operation #minimum_distance dom.value *= #minimum_distance_numerator dom.value
scoreboard players operation #minimum_distance dom.value /= #minimum_distance_denominator dom.value
scoreboard players operation #minimum_distance dom.value *= #minimum_distance dom.value







# Process each point

execute store result score #point_x dom.value run data get storage dominexis:data tag.poi[0][0]
execute store result score #point_z dom.value run data get storage dominexis:data tag.poi[0][1]

data modify storage dominexis:data tag.list set from storage dominexis:data tag.list_0

scoreboard players operation #math_00 dom.value = #point_x dom.value
scoreboard players operation #math_01 dom.value = #point_z dom.value
scoreboard players operation #math_00 dom.value -= #x dom.value
scoreboard players operation #math_01 dom.value -= #z dom.value

execute if score #math_00 dom.value matches 0..15 if score #math_01 dom.value matches 0..15 run function dominexis:object/chunk/generic/point/channel/point



execute store result score #point_x dom.value run data get storage dominexis:data tag.poi[1][0]
execute store result score #point_z dom.value run data get storage dominexis:data tag.poi[1][1]

data modify storage dominexis:data tag.list set from storage dominexis:data tag.list_1

scoreboard players operation #math_00 dom.value = #point_x dom.value
scoreboard players operation #math_01 dom.value = #point_z dom.value
scoreboard players operation #math_00 dom.value -= #x dom.value
scoreboard players operation #math_01 dom.value -= #z dom.value

execute if score #math_00 dom.value matches 0..15 if score #math_01 dom.value matches 0..15 run function dominexis:object/chunk/generic/point/channel/point



execute store result score #point_x dom.value run data get storage dominexis:data tag.poi[2][0]
execute store result score #point_z dom.value run data get storage dominexis:data tag.poi[2][1]

data modify storage dominexis:data tag.list set from storage dominexis:data tag.list_2

scoreboard players operation #math_00 dom.value = #point_x dom.value
scoreboard players operation #math_01 dom.value = #point_z dom.value
scoreboard players operation #math_00 dom.value -= #x dom.value
scoreboard players operation #math_01 dom.value -= #z dom.value

execute if score #math_00 dom.value matches 0..15 if score #math_01 dom.value matches 0..15 run function dominexis:object/chunk/generic/point/channel/point







# Increment point channel

scoreboard players add #point_channel dom.value 1







# Terminate tick

function dominexis:generic/tick_terminate