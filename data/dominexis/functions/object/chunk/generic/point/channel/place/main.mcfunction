# Extract layers

scoreboard players operation #point_x dom.value -= #x dom.value
scoreboard players operation #point_z dom.value -= #z dom.value

scoreboard players operation #layer_1_x dom.value = #point_x dom.value
scoreboard players operation #layer_1_x dom.value /= #4 dom.value
scoreboard players operation #layer_1_x dom.value %= #4 dom.value
scoreboard players operation #layer_0_x dom.value = #point_x dom.value
scoreboard players operation #layer_0_x dom.value %= #4 dom.value

scoreboard players operation #layer_1_z dom.value = #point_z dom.value
scoreboard players operation #layer_1_z dom.value /= #4 dom.value
scoreboard players operation #layer_1_z dom.value %= #4 dom.value
scoreboard players operation #layer_0_z dom.value = #point_z dom.value
scoreboard players operation #layer_0_z dom.value %= #4 dom.value







# Execute function tree

function dominexis:object/chunk/generic/point/channel/place/position/z/layer_1