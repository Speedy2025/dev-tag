# Generate channels

scoreboard players set #channel_size dom.value 16
scoreboard players operation #value_0 dom.value = #channel_01_value_0 dom.value
scoreboard players operation #value_1 dom.value = #channel_01_value_1 dom.value
scoreboard players operation #value_2 dom.value = #channel_01_value_2 dom.value
scoreboard players operation #value_3 dom.value = #channel_01_value_3 dom.value
scoreboard players operation #slope_x_0 dom.value = #channel_01_slope_x_0 dom.value
scoreboard players operation #slope_x_1 dom.value = #channel_01_slope_x_1 dom.value
scoreboard players operation #slope_x_2 dom.value = #channel_01_slope_x_2 dom.value
scoreboard players operation #slope_x_3 dom.value = #channel_01_slope_x_3 dom.value
scoreboard players operation #slope_z_0 dom.value = #channel_01_slope_z_0 dom.value
scoreboard players operation #slope_z_1 dom.value = #channel_01_slope_z_1 dom.value
scoreboard players operation #slope_z_2 dom.value = #channel_01_slope_z_2 dom.value
scoreboard players operation #slope_z_3 dom.value = #channel_01_slope_z_3 dom.value
scoreboard players operation #slope_x_row_0 dom.value = #channel_01_slope_x_row_0 dom.value
scoreboard players operation #slope_x_row_1 dom.value = #channel_01_slope_x_row_1 dom.value
scoreboard players operation #slope_x_row_2 dom.value = #channel_01_slope_x_row_2 dom.value
scoreboard players operation #slope_x_row_3 dom.value = #channel_01_slope_x_row_3 dom.value
function dominexis:object/chunk/generic/generate/channel
scoreboard players operation #channel_01_value_0 dom.value = #value_0 dom.value
scoreboard players operation #channel_01_value_1 dom.value = #value_1 dom.value
scoreboard players operation #channel_01_value_2 dom.value = #value_2 dom.value
scoreboard players operation #channel_01_value_3 dom.value = #value_3 dom.value
scoreboard players operation #channel_01_value dom.value = #output_value dom.value



scoreboard players set #channel_size dom.value 16
scoreboard players operation #value_0 dom.value = #channel_02_value_0 dom.value
scoreboard players operation #value_1 dom.value = #channel_02_value_1 dom.value
scoreboard players operation #value_2 dom.value = #channel_02_value_2 dom.value
scoreboard players operation #value_3 dom.value = #channel_02_value_3 dom.value
scoreboard players operation #slope_x_0 dom.value = #channel_02_slope_x_0 dom.value
scoreboard players operation #slope_x_1 dom.value = #channel_02_slope_x_1 dom.value
scoreboard players operation #slope_x_2 dom.value = #channel_02_slope_x_2 dom.value
scoreboard players operation #slope_x_3 dom.value = #channel_02_slope_x_3 dom.value
scoreboard players operation #slope_z_0 dom.value = #channel_02_slope_z_0 dom.value
scoreboard players operation #slope_z_1 dom.value = #channel_02_slope_z_1 dom.value
scoreboard players operation #slope_z_2 dom.value = #channel_02_slope_z_2 dom.value
scoreboard players operation #slope_z_3 dom.value = #channel_02_slope_z_3 dom.value
scoreboard players operation #slope_x_row_0 dom.value = #channel_02_slope_x_row_0 dom.value
scoreboard players operation #slope_x_row_1 dom.value = #channel_02_slope_x_row_1 dom.value
scoreboard players operation #slope_x_row_2 dom.value = #channel_02_slope_x_row_2 dom.value
scoreboard players operation #slope_x_row_3 dom.value = #channel_02_slope_x_row_3 dom.value
function dominexis:object/chunk/generic/generate/channel
scoreboard players operation #channel_02_value_0 dom.value = #value_0 dom.value
scoreboard players operation #channel_02_value_1 dom.value = #value_1 dom.value
scoreboard players operation #channel_02_value_2 dom.value = #value_2 dom.value
scoreboard players operation #channel_02_value_3 dom.value = #value_3 dom.value
scoreboard players operation #channel_02_value dom.value = #output_value dom.value



scoreboard players set #channel_size dom.value 16
scoreboard players operation #value_0 dom.value = #channel_03_value_0 dom.value
scoreboard players operation #value_1 dom.value = #channel_03_value_1 dom.value
scoreboard players operation #value_2 dom.value = #channel_03_value_2 dom.value
scoreboard players operation #value_3 dom.value = #channel_03_value_3 dom.value
scoreboard players operation #slope_x_0 dom.value = #channel_03_slope_x_0 dom.value
scoreboard players operation #slope_x_1 dom.value = #channel_03_slope_x_1 dom.value
scoreboard players operation #slope_x_2 dom.value = #channel_03_slope_x_2 dom.value
scoreboard players operation #slope_x_3 dom.value = #channel_03_slope_x_3 dom.value
scoreboard players operation #slope_z_0 dom.value = #channel_03_slope_z_0 dom.value
scoreboard players operation #slope_z_1 dom.value = #channel_03_slope_z_1 dom.value
scoreboard players operation #slope_z_2 dom.value = #channel_03_slope_z_2 dom.value
scoreboard players operation #slope_z_3 dom.value = #channel_03_slope_z_3 dom.value
scoreboard players operation #slope_x_row_0 dom.value = #channel_03_slope_x_row_0 dom.value
scoreboard players operation #slope_x_row_1 dom.value = #channel_03_slope_x_row_1 dom.value
scoreboard players operation #slope_x_row_2 dom.value = #channel_03_slope_x_row_2 dom.value
scoreboard players operation #slope_x_row_3 dom.value = #channel_03_slope_x_row_3 dom.value
function dominexis:object/chunk/generic/generate/channel
scoreboard players operation #channel_03_value_0 dom.value = #value_0 dom.value
scoreboard players operation #channel_03_value_1 dom.value = #value_1 dom.value
scoreboard players operation #channel_03_value_2 dom.value = #value_2 dom.value
scoreboard players operation #channel_03_value_3 dom.value = #value_3 dom.value
scoreboard players operation #channel_03_value dom.value = #output_value dom.value







# Compile value

scoreboard players operation #value dom.value = #channel_01_value dom.value
scoreboard players operation #value dom.value /= #100 dom.value
scoreboard players operation #layer_value dom.value = #channel_02_value dom.value
scoreboard players operation #layer_value dom.value /= #100 dom.value