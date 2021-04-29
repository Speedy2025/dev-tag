# Create fire

scoreboard players set #input dom.value 3
function dominexis:generic/rng

execute if score #output dom.value matches 0 run fill ~-15 ~-15 ~-15 ~16 ~16 ~16 fire replace air
execute if score #output dom.value matches 0 run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2







# Terminate

kill @s