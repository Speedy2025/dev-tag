# Transform input

scoreboard players operation #trigonometry_math_0 dom.value = #input dom.value
scoreboard players add #trigonometry_math_0 dom.value 900
scoreboard players operation #trigonometry_math_0 dom.value %= #3600 dom.value
scoreboard players remove #trigonometry_math_0 dom.value 1800
execute if score #trigonometry_math_0 dom.value matches 0.. run scoreboard players operation #trigonometry_math_0 dom.value *= #-1 dom.value
scoreboard players add #trigonometry_math_0 dom.value 900







# Scale input

scoreboard players operation #trigonometry_math_0 dom.value *= #1570 dom.value
scoreboard players operation #trigonometry_math_0 dom.value /= #900 dom.value







# Compute Taylor

scoreboard players operation #trigonometry_math_1 dom.value = #trigonometry_math_0 dom.value

scoreboard players set #trigonometry_math_2 dom.value 5040
scoreboard players set #trigonometry_math_3 dom.value 840
scoreboard players set #trigonometry_math_4 dom.value 42

scoreboard players operation #trigonometry_math_2 dom.value *= #trigonometry_math_1 dom.value

scoreboard players operation #trigonometry_math_1 dom.value *= #trigonometry_math_0 dom.value
scoreboard players operation #trigonometry_math_1 dom.value /= #1000 dom.value
scoreboard players operation #trigonometry_math_1 dom.value *= #trigonometry_math_0 dom.value
scoreboard players operation #trigonometry_math_1 dom.value /= #1000 dom.value
scoreboard players operation #trigonometry_math_3 dom.value *= #trigonometry_math_1 dom.value

scoreboard players operation #trigonometry_math_1 dom.value *= #trigonometry_math_0 dom.value
scoreboard players operation #trigonometry_math_1 dom.value /= #1000 dom.value
scoreboard players operation #trigonometry_math_1 dom.value *= #trigonometry_math_0 dom.value
scoreboard players operation #trigonometry_math_1 dom.value /= #1000 dom.value
scoreboard players operation #trigonometry_math_4 dom.value *= #trigonometry_math_1 dom.value

scoreboard players operation #trigonometry_math_1 dom.value *= #trigonometry_math_0 dom.value
scoreboard players operation #trigonometry_math_1 dom.value /= #1000 dom.value
scoreboard players operation #trigonometry_math_1 dom.value *= #trigonometry_math_0 dom.value
scoreboard players operation #trigonometry_math_1 dom.value /= #1000 dom.value
scoreboard players operation #trigonometry_math_5 dom.value = #trigonometry_math_1 dom.value

scoreboard players operation #output dom.value = #trigonometry_math_2 dom.value
scoreboard players operation #output dom.value -= #trigonometry_math_3 dom.value
scoreboard players operation #output dom.value += #trigonometry_math_4 dom.value
scoreboard players operation #output dom.value -= #trigonometry_math_5 dom.value

scoreboard players operation #output dom.value /= #5040 dom.value