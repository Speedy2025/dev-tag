# Place decorations

scoreboard players set #input dom.value 4
function dominexis:generic/rng

execute if score #output dom.value matches 0 run setblock ~ ~1 ~ sunflower[half=lower]
execute if score #output dom.value matches 0 run setblock ~ ~2 ~ sunflower[half=upper]
execute if score #output dom.value matches 1 run setblock ~ ~1 ~ tall_grass[half=lower]
execute if score #output dom.value matches 1 run setblock ~ ~2 ~ tall_grass[half=upper]
execute if score #output dom.value matches 2..3 run setblock ~ ~1 ~ grass