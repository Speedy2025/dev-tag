# Generate points in specific channels

execute if score #tick_terminate dom.value matches 0 if score #point_channel dom.value matches 0 run function dominexis:object/chunk/overworld/point/object/ceiling_feature/initialize
execute if score #tick_terminate dom.value matches 0 if score #point_channel dom.value matches 1 run function dominexis:object/chunk/overworld/point/object/mushroom_house/initialize







# Terminate

execute if score #point_channel dom.value matches 2.. run kill @s
execute if score #point_channel dom.value matches 2.. run scoreboard players set #object_phase dom.value 0