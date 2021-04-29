# Place block

function dominexis:object/chunk/overworld/block/block







# Execute resursive function

scoreboard players remove #height dom.value 1
execute if score #height dom.value matches 1.. positioned ~ ~1 ~ run function dominexis:object/chunk/overworld/block/recursive