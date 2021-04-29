# Get quadrant of inputs

scoreboard players set #quadrant_x dom.value 1
execute if score #input_x dom.value matches ..-1 run scoreboard players set #quadrant_x dom.value -1
execute if score #input_x dom.value matches ..-1 run scoreboard players operation #input_x dom.value *= #-1 dom.value

scoreboard players set #quadrant_y dom.value 1
execute if score #input_y dom.value matches ..-1 run scoreboard players set #quadrant_y dom.value -1
execute if score #input_y dom.value matches ..-1 run scoreboard players operation #input_y dom.value *= #-1 dom.value







# Switch around inputs if ratio demands it

scoreboard players set #arctangent_swap_boolean dom.value 0
execute if score #input_x dom.value < #input_y dom.value run scoreboard players set #arctangent_swap_boolean dom.value 1
execute if score #input_x dom.value < #input_y dom.value run scoreboard players operation #input_x dom.value >< #input_y dom.value







# Compute function

scoreboard players operation #trigonometry_math_0 dom.value = #input_y dom.value
scoreboard players operation #trigonometry_math_0 dom.value *= #1000 dom.value
scoreboard players operation #trigonometry_math_0 dom.value /= #input_x dom.value
scoreboard players operation #trigonometry_math_1 dom.value = #trigonometry_math_0 dom.value

scoreboard players set #trigonometry_math_2 dom.value 776
scoreboard players set #trigonometry_math_3 dom.value -2874
scoreboard players set #trigonometry_math_4 dom.value 9951

scoreboard players operation #trigonometry_math_4 dom.value *= #trigonometry_math_1 dom.value
scoreboard players operation #trigonometry_math_4 dom.value /= #10000 dom.value

scoreboard players operation #trigonometry_math_1 dom.value *= #trigonometry_math_0 dom.value
scoreboard players operation #trigonometry_math_1 dom.value /= #1000 dom.value
scoreboard players operation #trigonometry_math_1 dom.value *= #trigonometry_math_0 dom.value
scoreboard players operation #trigonometry_math_1 dom.value /= #1000 dom.value

scoreboard players operation #trigonometry_math_3 dom.value *= #trigonometry_math_1 dom.value
scoreboard players operation #trigonometry_math_3 dom.value /= #10000 dom.value

scoreboard players operation #trigonometry_math_1 dom.value *= #trigonometry_math_0 dom.value
scoreboard players operation #trigonometry_math_1 dom.value /= #1000 dom.value
scoreboard players operation #trigonometry_math_1 dom.value *= #trigonometry_math_0 dom.value
scoreboard players operation #trigonometry_math_1 dom.value /= #1000 dom.value

scoreboard players operation #trigonometry_math_2 dom.value *= #trigonometry_math_1 dom.value
scoreboard players operation #trigonometry_math_2 dom.value /= #10000 dom.value

scoreboard players operation #output dom.value = #trigonometry_math_2 dom.value
scoreboard players operation #output dom.value += #trigonometry_math_3 dom.value
scoreboard players operation #output dom.value += #trigonometry_math_4 dom.value

scoreboard players operation #output dom.value *= #900 dom.value
scoreboard players operation #output dom.value /= #1570 dom.value







# Adjust for swap and quadrant

execute if score #arctangent_swap_boolean dom.value matches 1 run scoreboard players operation #output dom.value *= #-1 dom.value
execute if score #arctangent_swap_boolean dom.value matches 1 run scoreboard players add #output dom.value 900

execute if score #quadrant_x dom.value matches -1 if score #quadrant_y dom.value matches -1 run scoreboard players remove #output dom.value 1800

execute if score #quadrant_x dom.value matches -1 if score #quadrant_y dom.value matches 01 run scoreboard players operation #output dom.value *= #-1 dom.value
execute if score #quadrant_x dom.value matches -1 if score #quadrant_y dom.value matches 01 run scoreboard players add #output dom.value 1800

execute if score #quadrant_x dom.value matches 01 if score #quadrant_y dom.value matches -1 run scoreboard players operation #output dom.value *= #-1 dom.value