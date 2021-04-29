# Initialize chunk

execute unless entity @s[tag=dom.entity.property.initialized] run function dominexis:object/chunk/generic/initialize/main







# Generate chunk

execute if score #object_phase dom.value matches 1 at @s run function dominexis:object/chunk/generic/generate/position/z/layer_1
execute if score #object_phase dom.value matches 2 at @s if score #tick_terminate dom.value matches 0 run function dominexis:object/chunk/generic/point/main