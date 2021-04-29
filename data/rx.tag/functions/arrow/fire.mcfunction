# By: rx97
# 01 Apr 21
# 
#> @s: arrow
#> Fires the arrow w/ player data

data modify entity @s NoGravity set value 0b

#> copy Rotation
data modify entity e92d7aeb-0f00-527b-8b7b-a769574df0c4 Rotation set from storage rx:temp tag.Rotation
execute as e92d7aeb-0f00-527b-8b7b-a769574df0c4 rotated as @s positioned 0.0 0.0 0.0 run tp e92d7aeb-0f00-527b-8b7b-a769574df0c4 ^ ^ ^1

#> get and boost x y and z
execute store result score $x rx.temp run data get entity e92d7aeb-0f00-527b-8b7b-a769574df0c4 Pos[0] 1000
execute store result score $y rx.temp run data get entity e92d7aeb-0f00-527b-8b7b-a769574df0c4 Pos[1] 1000
execute store result score $z rx.temp run data get entity e92d7aeb-0f00-527b-8b7b-a769574df0c4 Pos[2] 1000

scoreboard players operation $x rx.temp *= @s rx.tag.vel
scoreboard players operation $y rx.temp *= @s rx.tag.vel
scoreboard players operation $z rx.temp *= @s rx.tag.vel

#> boost y a bit
scoreboard players add @s y_mot 250000

#> restore to arrow
execute store result entity @s Motion[0] double 0.000001 run scoreboard players get $x rx.temp
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get $z rx.temp
execute store result entity @s Motion[1] double 0.000001 run scoreboard players get $y rx.temp

#> set arrow rotation
data modify entity @s Rotation set from storage rx:temp tag.Rotation

#> toggle Air
data modify entity @s Air set value 1s

#> boost dmg
execute store result entity @s damage double 1 run data get entity @s damage 1.75

#> playsound
execute as @p[tag=rx.self] at @s run playsound minecraft:entity.firework_rocket.launch master @a ~ ~ ~ 1.88 1

#> reset arrow stuff
tag @s remove rx.tag.arrow
scoreboard players reset @s rx.uid
tag @s add rx.tag.fired
