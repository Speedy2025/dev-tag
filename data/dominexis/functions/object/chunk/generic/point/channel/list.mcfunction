# Generate point

scoreboard players operation #input_x dom.value = #list_x dom.value
scoreboard players operation #input_z dom.value = #list_z dom.value
scoreboard players operation #input_x dom.value *= #channel_size dom.value
scoreboard players operation #input_z dom.value *= #channel_size dom.value
scoreboard players operation #input_x dom.value += #chunk_x dom.value
scoreboard players operation #input_z dom.value += #chunk_z dom.value

scoreboard players operation #input_y dom.value = #list_y dom.value
scoreboard players operation #input_y dom.value *= #2 dom.value
scoreboard players operation #input_y dom.value += #channel_id dom.value

scoreboard players operation #input dom.value = #channel_size dom.value

function dominexis:generic/cbrng/main

scoreboard players operation #point_x dom.value = #output dom.value
scoreboard players operation #point_x dom.value += #input_x dom.value

scoreboard players add #input_y dom.value 1

function dominexis:generic/cbrng/main

scoreboard players operation #point_z dom.value = #output dom.value
scoreboard players operation #point_z dom.value += #input_z dom.value







# Write point to list

data modify storage dominexis:data tag.list append value [I;0,0]
execute store result storage dominexis:data tag.list[-1][0] int 1 run scoreboard players get #point_x dom.value
execute store result storage dominexis:data tag.list[-1][1] int 1 run scoreboard players get #point_z dom.value







# Iterate through values

scoreboard players add #list_y dom.value 1

execute if score #list_y dom.value matches 3.. run scoreboard players add #list_x dom.value 1
execute if score #list_y dom.value matches 3.. run scoreboard players set #list_y dom.value 0

execute if score #list_x dom.value matches 2.. run scoreboard players add #list_z dom.value 1
execute if score #list_x dom.value matches 2.. run scoreboard players set #list_x dom.value -1







# Run recursive function

execute if score #list_z dom.value matches -1..1 run function dominexis:object/chunk/generic/point/channel/list