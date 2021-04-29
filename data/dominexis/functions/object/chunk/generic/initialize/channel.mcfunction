# Prepare values

scoreboard players operation #channel_id dom.value *= #10 dom.value
scoreboard players operation #value_range dom.value *= #100 dom.value
scoreboard players operation #value_center dom.value *= #100 dom.value







# Round down position

scoreboard players operation #input_x dom.value = #x dom.value
scoreboard players operation #input_z dom.value = #z dom.value

scoreboard players operation #input_x dom.value /= #channel_size dom.value
scoreboard players operation #input_z dom.value /= #channel_size dom.value
scoreboard players operation #input_x dom.value *= #channel_size dom.value
scoreboard players operation #input_z dom.value *= #channel_size dom.value







# Get node values

function dominexis:object/chunk/generic/initialize/node
scoreboard players operation #value_0 dom.value = #value dom.value
scoreboard players operation #slope_x_0 dom.value = #slope_x dom.value
scoreboard players operation #slope_z_0 dom.value = #slope_z dom.value

scoreboard players operation #input_x dom.value += #channel_size dom.value

function dominexis:object/chunk/generic/initialize/node
scoreboard players operation #value_1 dom.value = #value dom.value
scoreboard players operation #slope_x_1 dom.value = #slope_x dom.value
scoreboard players operation #slope_z_1 dom.value = #slope_z dom.value

scoreboard players operation #input_x dom.value -= #channel_size dom.value
scoreboard players operation #input_z dom.value += #channel_size dom.value

function dominexis:object/chunk/generic/initialize/node
scoreboard players operation #value_2 dom.value = #value dom.value
scoreboard players operation #slope_x_2 dom.value = #slope_x dom.value
scoreboard players operation #slope_z_2 dom.value = #slope_z dom.value

scoreboard players operation #input_x dom.value += #channel_size dom.value

function dominexis:object/chunk/generic/initialize/node
scoreboard players operation #value_3 dom.value = #value dom.value
scoreboard players operation #slope_x_3 dom.value = #slope_x dom.value
scoreboard players operation #slope_z_3 dom.value = #slope_z dom.value







# Modify values to origin of generating chunk

scoreboard players operation #math_x_0 dom.value = #x dom.value
scoreboard players operation #math_z_0 dom.value = #z dom.value
scoreboard players operation #math_x_0 dom.value %= #channel_size dom.value
scoreboard players operation #math_z_0 dom.value %= #channel_size dom.value
scoreboard players operation #math_x_1 dom.value = #math_x_0 dom.value
scoreboard players operation #math_z_1 dom.value = #math_z_0 dom.value
scoreboard players operation #math_x_1 dom.value -= #channel_size dom.value
scoreboard players operation #math_z_1 dom.value -= #channel_size dom.value

scoreboard players operation #math_x dom.value = #slope_x_0 dom.value
scoreboard players operation #math_x dom.value *= #math_x_0 dom.value
scoreboard players operation #math_z dom.value = #slope_z_0 dom.value
scoreboard players operation #math_z dom.value *= #math_z_0 dom.value
scoreboard players operation #value_0 dom.value += #math_x dom.value
scoreboard players operation #value_0 dom.value += #math_z dom.value

scoreboard players operation #math_x dom.value = #slope_x_1 dom.value
scoreboard players operation #math_x dom.value *= #math_x_1 dom.value
scoreboard players operation #math_z dom.value = #slope_z_1 dom.value
scoreboard players operation #math_z dom.value *= #math_z_0 dom.value
scoreboard players operation #value_1 dom.value += #math_x dom.value
scoreboard players operation #value_1 dom.value += #math_z dom.value

scoreboard players operation #math_x dom.value = #slope_x_2 dom.value
scoreboard players operation #math_x dom.value *= #math_x_0 dom.value
scoreboard players operation #math_z dom.value = #slope_z_2 dom.value
scoreboard players operation #math_z dom.value *= #math_z_1 dom.value
scoreboard players operation #value_2 dom.value += #math_x dom.value
scoreboard players operation #value_2 dom.value += #math_z dom.value

scoreboard players operation #math_x dom.value = #slope_x_3 dom.value
scoreboard players operation #math_x dom.value *= #math_x_1 dom.value
scoreboard players operation #math_z dom.value = #slope_z_3 dom.value
scoreboard players operation #math_z dom.value *= #math_z_1 dom.value
scoreboard players operation #value_3 dom.value += #math_x dom.value
scoreboard players operation #value_3 dom.value += #math_z dom.value







# Compute slope rows

scoreboard players operation #slope_x_row_0 dom.value = #slope_x_0 dom.value
scoreboard players operation #slope_x_row_1 dom.value = #slope_x_1 dom.value
scoreboard players operation #slope_x_row_2 dom.value = #slope_x_2 dom.value
scoreboard players operation #slope_x_row_3 dom.value = #slope_x_3 dom.value
scoreboard players operation #slope_x_row_0 dom.value *= #16 dom.value
scoreboard players operation #slope_x_row_1 dom.value *= #16 dom.value
scoreboard players operation #slope_x_row_2 dom.value *= #16 dom.value
scoreboard players operation #slope_x_row_3 dom.value *= #16 dom.value