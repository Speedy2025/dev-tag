# Get differences in heights

scoreboard players operation #height dom.value = #layer_value dom.value
scoreboard players operation #height dom.value -= #value dom.value

scoreboard players operation #math_00 dom.value = #channel_02_value dom.value
scoreboard players operation #math_00 dom.value -= #channel_01_value dom.value







# Split up height into layers

scoreboard players operation #height_layer_2 dom.value = #height dom.value
scoreboard players operation #height_layer_2 dom.value /= #16 dom.value
scoreboard players operation #height_layer_2 dom.value %= #4 dom.value
scoreboard players operation #height_layer_1 dom.value = #height dom.value
scoreboard players operation #height_layer_1 dom.value /= #4 dom.value
scoreboard players operation #height_layer_1 dom.value %= #4 dom.value
scoreboard players operation #height_layer_0 dom.value = #height dom.value
scoreboard players operation #height_layer_0 dom.value %= #4 dom.value







# Place blocks

execute if score #math_00 dom.value matches -500.. run fill ~ ~ ~ ~ ~1 ~ red_stained_glass replace air

execute if score #math_00 dom.value matches 120.. if score #height dom.value matches 1.. run function dominexis:object/chunk/overworld/block/recursive