# Place blocks

execute if score #channel_60_value dom.value matches ..0 if score #channel_61_value dom.value matches ..0 run fill ~ 128 ~ ~ ~ ~ terracotta
execute if score #channel_60_value dom.value matches ..0 if score #channel_61_value dom.value matches 1.. run fill ~ 128 ~ ~ ~-4 ~ terracotta
execute if score #channel_60_value dom.value matches ..0 if score #channel_61_value dom.value matches 1.. run fill ~ ~-3 ~ ~ ~ ~ red_terracotta
execute if score #channel_60_value dom.value matches 1.. run fill ~ 128 ~ ~ ~-4 ~ terracotta
execute if score #channel_60_value dom.value matches 1.. run fill ~ ~-3 ~ ~ ~-1 ~ dirt
execute if score #channel_60_value dom.value matches 1.. run fill ~ ~ ~ ~ ~ ~ grass_block