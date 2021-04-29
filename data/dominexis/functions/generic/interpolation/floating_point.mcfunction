# Get distance

scoreboard players operation #interpolation_distance dom.value = #interpolation_destination dom.value
scoreboard players operation #interpolation_distance dom.value -= #interpolation_location dom.value







# Increase speed

execute if score #interpolation_distance dom.value matches ..-1 run scoreboard players operation #interpolation_speed dom.value -= #interpolation_acceleration dom.value
execute if score #interpolation_distance dom.value matches 01.. run scoreboard players operation #interpolation_speed dom.value += #interpolation_acceleration dom.value







# Compute coefficient

scoreboard players operation #interpolation_numerator dom.value = #interpolation_distance dom.value
scoreboard players operation #interpolation_denominator dom.value = #interpolation_speed dom.value

execute if score #interpolation_numerator dom.value matches ..-1 run scoreboard players operation #interpolation_numerator dom.value *= #-1 dom.value
execute if score #interpolation_denominator dom.value matches ..-1 run scoreboard players operation #interpolation_denominator dom.value *= #-1 dom.value

scoreboard players operation #interpolation_denominator dom.value += #interpolation_numerator dom.value







# Apply coefficient

scoreboard players operation #interpolation_speed dom.value *= #interpolation_numerator dom.value
scoreboard players operation #interpolation_speed dom.value /= #interpolation_denominator dom.value







# Apply motion

scoreboard players operation #interpolation_location dom.value += #interpolation_speed dom.value