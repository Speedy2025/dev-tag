# Execute functions at various positions

execute if score #tick_terminate dom.value matches 0 if score #layer_0_z dom.value matches 0 positioned ~ ~ ~00 run function dominexis:object/chunk/generic/generate/position/x/layer_1
execute if score #tick_terminate dom.value matches 0 if score #layer_0_z dom.value matches 1 positioned ~ ~ ~01 run function dominexis:object/chunk/generic/generate/position/x/layer_1
execute if score #tick_terminate dom.value matches 0 if score #layer_0_z dom.value matches 2 positioned ~ ~ ~02 run function dominexis:object/chunk/generic/generate/position/x/layer_1
execute if score #tick_terminate dom.value matches 0 if score #layer_0_z dom.value matches 3 positioned ~ ~ ~03 run function dominexis:object/chunk/generic/generate/position/x/layer_1