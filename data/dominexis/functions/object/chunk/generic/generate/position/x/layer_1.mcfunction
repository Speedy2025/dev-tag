# Execute functions at various positions

execute if score #tick_terminate dom.value matches 0 if score #layer_1_x dom.value matches 0 positioned ~00 ~ ~ run function dominexis:object/chunk/generic/generate/position/x/layer_0
execute if score #tick_terminate dom.value matches 0 if score #layer_1_x dom.value matches 1 positioned ~04 ~ ~ run function dominexis:object/chunk/generic/generate/position/x/layer_0
execute if score #tick_terminate dom.value matches 0 if score #layer_1_x dom.value matches 2 positioned ~08 ~ ~ run function dominexis:object/chunk/generic/generate/position/x/layer_0
execute if score #tick_terminate dom.value matches 0 if score #layer_1_x dom.value matches 3 positioned ~12 ~ ~ run function dominexis:object/chunk/generic/generate/position/x/layer_0