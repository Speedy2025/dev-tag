# Compute coefficients

scoreboard players operation #coefficient_0 dom.value = #value_0 dom.value

scoreboard players operation #coefficient_1 dom.value = #value_1 dom.value
scoreboard players operation #coefficient_1 dom.value -= #value_0 dom.value

scoreboard players operation #coefficient_2 dom.value = #value_2 dom.value
scoreboard players operation #coefficient_2 dom.value -= #value_0 dom.value

scoreboard players operation #coefficient_3 dom.value = #value_0 dom.value
scoreboard players operation #coefficient_3 dom.value -= #value_1 dom.value
scoreboard players operation #coefficient_3 dom.value -= #value_2 dom.value
scoreboard players operation #coefficient_3 dom.value += #value_3 dom.value







# Compute interpolation values

scoreboard players operation #input dom.value = #position_x dom.value
scoreboard players operation #input dom.value += #x dom.value
scoreboard players operation #input dom.value %= #channel_size dom.value
scoreboard players operation #input dom.value *= #10000 dom.value
scoreboard players operation #input dom.value /= #channel_size dom.value
function dominexis:generic/interpolation/smoothstep
scoreboard players operation #interpolation_x dom.value = #output dom.value

scoreboard players operation #input dom.value = #position_z dom.value
scoreboard players operation #input dom.value += #z dom.value
scoreboard players operation #input dom.value %= #channel_size dom.value
scoreboard players operation #input dom.value *= #10000 dom.value
scoreboard players operation #input dom.value /= #channel_size dom.value
function dominexis:generic/interpolation/smoothstep
scoreboard players operation #interpolation_z dom.value = #output dom.value







# Compute formula

scoreboard players operation #coefficient_1 dom.value *= #interpolation_x dom.value
scoreboard players operation #coefficient_1 dom.value /= #10000 dom.value

scoreboard players operation #coefficient_2 dom.value *= #interpolation_z dom.value
scoreboard players operation #coefficient_2 dom.value /= #10000 dom.value

scoreboard players operation #coefficient_3 dom.value *= #interpolation_x dom.value
scoreboard players operation #coefficient_3 dom.value /= #10000 dom.value
scoreboard players operation #coefficient_3 dom.value *= #interpolation_z dom.value
scoreboard players operation #coefficient_3 dom.value /= #10000 dom.value

scoreboard players operation #output_value dom.value = #coefficient_0 dom.value
scoreboard players operation #output_value dom.value += #coefficient_1 dom.value
scoreboard players operation #output_value dom.value += #coefficient_2 dom.value
scoreboard players operation #output_value dom.value += #coefficient_3 dom.value






# Modify values

scoreboard players operation #value_0 dom.value += #slope_x_0 dom.value
scoreboard players operation #value_1 dom.value += #slope_x_1 dom.value
scoreboard players operation #value_2 dom.value += #slope_x_2 dom.value
scoreboard players operation #value_3 dom.value += #slope_x_3 dom.value

execute if score #position_x dom.value matches 15.. run scoreboard players operation #value_0 dom.value -= #slope_x_row_0 dom.value
execute if score #position_x dom.value matches 15.. run scoreboard players operation #value_1 dom.value -= #slope_x_row_1 dom.value
execute if score #position_x dom.value matches 15.. run scoreboard players operation #value_2 dom.value -= #slope_x_row_2 dom.value
execute if score #position_x dom.value matches 15.. run scoreboard players operation #value_3 dom.value -= #slope_x_row_3 dom.value
execute if score #position_x dom.value matches 15.. run scoreboard players operation #value_0 dom.value += #slope_z_0 dom.value
execute if score #position_x dom.value matches 15.. run scoreboard players operation #value_1 dom.value += #slope_z_1 dom.value
execute if score #position_x dom.value matches 15.. run scoreboard players operation #value_2 dom.value += #slope_z_2 dom.value
execute if score #position_x dom.value matches 15.. run scoreboard players operation #value_3 dom.value += #slope_z_3 dom.value