# Execute function according to score

execute if score #layer_3 dom.value matches 0 positioned ~ 000 ~ run function dominexis:object/chunk/generic/generate/print/layer_2
execute if score #layer_3 dom.value matches 1 positioned ~ 064 ~ run function dominexis:object/chunk/generic/generate/print/layer_2
execute if score #layer_3 dom.value matches 2 positioned ~ 128 ~ run function dominexis:object/chunk/generic/generate/print/layer_2
execute if score #layer_3 dom.value matches 3 positioned ~ 192 ~ run function dominexis:object/chunk/generic/generate/print/layer_2