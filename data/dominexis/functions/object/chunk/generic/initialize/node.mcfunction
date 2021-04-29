# Get random values

scoreboard players operation #input_y dom.value = #channel_id dom.value
scoreboard players operation #input dom.value = #value_range dom.value
scoreboard players operation #input dom.value *= #2 dom.value
function dominexis:generic/cbrng/main
scoreboard players operation #value dom.value = #output dom.value
scoreboard players operation #value dom.value -= #value_range dom.value
scoreboard players operation #value dom.value += #value_center dom.value



scoreboard players add #input_y dom.value 1
scoreboard players operation #input dom.value = #slope_magnitude dom.value
scoreboard players operation #input dom.value *= #2 dom.value
scoreboard players add #input dom.value 1
function dominexis:generic/cbrng/main
scoreboard players operation #slope_x dom.value = #output dom.value
scoreboard players operation #slope_x dom.value -= #slope_magnitude dom.value

scoreboard players add #input_y dom.value 1
scoreboard players operation #input dom.value = #slope_magnitude dom.value
scoreboard players operation #input dom.value *= #2 dom.value
scoreboard players add #input dom.value 1
function dominexis:generic/cbrng/main
scoreboard players operation #slope_z dom.value = #output dom.value
scoreboard players operation #slope_z dom.value -= #slope_magnitude dom.value

execute if score #sloped dom.value matches 0 run scoreboard players set #slope_x dom.value 0
execute if score #sloped dom.value matches 0 run scoreboard players set #slope_z dom.value 0