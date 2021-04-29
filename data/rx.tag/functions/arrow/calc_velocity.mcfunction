# By: rx97
# 01 Apr 21
# 
#> @s: entity
#> calcs velocity to rx.tag.vel

data modify entity e92d7aeb-0f00-527b-8b7b-a769574df0c4 Pos set from entity @s Motion

execute store result score @s rx.tag.vel run data get entity @s Motion[0] 100000

execute positioned 0.0 0.0 0.0 as e92d7aeb-0f00-527b-8b7b-a769574df0c4 facing entity @s feet run tp @s ^ ^ ^1
execute store result score $normal_x rx.temp run data get entity e92d7aeb-0f00-527b-8b7b-a769574df0c4 Pos[0] 100

scoreboard players operation @s rx.tag.vel /= $normal_x rx.temp
