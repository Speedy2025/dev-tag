# Place blocks

execute if score #layer_value dom.value matches ..175 run fill ~ 128 ~ ~ ~-4 ~ terracotta
execute if score #layer_value dom.value matches ..175 run fill ~ ~-3 ~ ~ ~ ~ gravel

execute if score #layer_value dom.value matches 176..215 run function dominexis:object/chunk/tollbooth/block/middle

execute if score #layer_value dom.value matches 216.. run fill ~ 128 ~ ~ ~-4 ~ terracotta
execute if score #layer_value dom.value matches 216.. run fill ~ ~-3 ~ ~ ~ ~ bone_block



execute if score #value dom.value matches ..169 run fill ~ ~1 ~ ~ 170 ~ lava







# Place decorations

scoreboard players set #input dom.value 5000
function dominexis:generic/rng

execute if score #channel_60_value dom.value >= #output dom.value if score #layer_value dom.value matches 176..215 if score #value dom.value matches 170.. run function dominexis:object/chunk/tollbooth/block/decoration 