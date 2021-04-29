# Generate noise

execute if entity @s[tag=dom.entity.property.overworld] run function dominexis:object/chunk/overworld/generate
execute if entity @s[tag=dom.entity.property.tollbooth] run function dominexis:object/chunk/tollbooth/generate







# Print

scoreboard players operation #layer_3 dom.value = #value dom.value
scoreboard players operation #layer_3 dom.value /= #64 dom.value
scoreboard players operation #layer_2 dom.value = #value dom.value
scoreboard players operation #layer_2 dom.value /= #16 dom.value
scoreboard players operation #layer_2 dom.value %= #4 dom.value
scoreboard players operation #layer_1 dom.value = #value dom.value
scoreboard players operation #layer_1 dom.value /= #4 dom.value
scoreboard players operation #layer_1 dom.value %= #4 dom.value
scoreboard players operation #layer_0 dom.value = #value dom.value
scoreboard players operation #layer_0 dom.value %= #4 dom.value

function dominexis:object/chunk/generic/generate/print/layer_3







# Modify position value

scoreboard players add #position_x dom.value 1

execute if score #position_x dom.value matches 16.. run scoreboard players add #position_z dom.value 1
execute if score #position_x dom.value matches 16.. run scoreboard players remove #position_x dom.value 16

execute if score #position_z dom.value matches 16.. run scoreboard players set #tick_terminate dom.value 1
execute if score #position_z dom.value matches 16.. run scoreboard players set #object_phase dom.value 2

scoreboard players operation #layer_1_x dom.value = #position_x dom.value
scoreboard players operation #layer_1_x dom.value /= #4 dom.value
scoreboard players operation #layer_1_x dom.value %= #4 dom.value
scoreboard players operation #layer_0_x dom.value = #position_x dom.value
scoreboard players operation #layer_0_x dom.value %= #4 dom.value

scoreboard players operation #layer_1_z dom.value = #position_z dom.value
scoreboard players operation #layer_1_z dom.value /= #4 dom.value
scoreboard players operation #layer_1_z dom.value %= #4 dom.value
scoreboard players operation #layer_0_z dom.value = #position_z dom.value
scoreboard players operation #layer_0_z dom.value %= #4 dom.value







# Modify bedrock layer

setblock ~ 0 ~ obsidian
setblock ~ 1 ~ bedrock







# Tick terminate

function dominexis:generic/tick_terminate