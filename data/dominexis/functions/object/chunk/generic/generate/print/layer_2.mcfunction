# Execute function according to score

execute if score #layer_2 dom.value matches 0 positioned ~ ~000 ~ run function dominexis:object/chunk/generic/generate/print/layer_1
execute if score #layer_2 dom.value matches 1 positioned ~ ~016 ~ run function dominexis:object/chunk/generic/generate/print/layer_1
execute if score #layer_2 dom.value matches 2 positioned ~ ~032 ~ run function dominexis:object/chunk/generic/generate/print/layer_1
execute if score #layer_2 dom.value matches 3 positioned ~ ~048 ~ run function dominexis:object/chunk/generic/generate/print/layer_1