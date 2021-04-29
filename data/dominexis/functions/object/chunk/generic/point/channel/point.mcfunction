# Compute distance between current point and last listed point

execute store result score #math_00 dom.value run data get storage dominexis:data tag.list[-1][0]
execute store result score #math_01 dom.value run data get storage dominexis:data tag.list[-1][1]

scoreboard players operation #math_00 dom.value -= #point_x dom.value
scoreboard players operation #math_01 dom.value -= #point_z dom.value
scoreboard players operation #math_00 dom.value *= #math_00 dom.value
scoreboard players operation #math_01 dom.value *= #math_01 dom.value
scoreboard players operation #math_00 dom.value += #math_01 dom.value







# Place object if the end of the list has been reached

data remove storage dominexis:data tag.list[-1]
execute if score #math_00 dom.value > #minimum_distance dom.value unless data storage dominexis:data tag.list[0] run function dominexis:object/chunk/generic/point/channel/place/main







# Run recursive function

execute if score #math_00 dom.value > #minimum_distance dom.value if data storage dominexis:data tag.list[0] run function dominexis:object/chunk/generic/point/channel/point