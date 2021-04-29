#built using mc-build (https://github.com/mc-build/mc-build)

execute if score @s ak.var matches 20 run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 1 0.5
execute if score @s ak.var matches 30 run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 1 1
execute if score @s ak.var matches 50 run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 1 1.5
execute if score @s ak.var matches 70 run playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 1 2
execute if score @s ak.var matches 99 run stopsound @a master minecraft:block.beacon.ambient