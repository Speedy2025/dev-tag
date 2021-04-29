# Increment score

scoreboard players add #iterations dom.value 1







# Place feature on surface

execute if block ~ ~1 ~ #dominexis:ceiling run function dominexis:object/chunk/overworld/point/object/ceiling_feature/place







# Execute recursive function

execute if score #iterations dom.value matches ..20 positioned ~ ~1 ~ if block ~ ~ ~ air run function dominexis:object/chunk/overworld/point/object/ceiling_feature/surface