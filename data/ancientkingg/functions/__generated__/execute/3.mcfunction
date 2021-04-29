#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set @s ak.ep 0
scoreboard players operation temp0 rng = state rng
scoreboard players operation temp0 rng *= a rng
scoreboard players operation temp0 rng += c rng
scoreboard players operation temp0 rng %= m rng
scoreboard players operation state rng = temp0 rng
scoreboard players operation rng ak.var = temp0 rng
scoreboard players operation rng ak.var /= #100000 rng
scoreboard players operation rng ak.var %= #100 rng
scoreboard players add rng ak.var 0
execute if score rng ak.var matches 0..20 run tag @s add ak.ep
scoreboard players operation temp0 rng = state rng
scoreboard players operation temp0 rng *= a rng
scoreboard players operation temp0 rng += c rng
scoreboard players operation temp0 rng %= m rng
scoreboard players operation state rng = temp0 rng
scoreboard players operation rng ak.var = temp0 rng
scoreboard players operation rng ak.var /= #100000 rng
scoreboard players operation rng ak.var %= #100 rng
scoreboard players add rng ak.var 0
execute if score rng ak.var matches 0..10 run tag @s add ak.end_ep