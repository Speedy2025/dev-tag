#built using mc-build (https://github.com/mc-build/mc-build)

execute at @a as @e[type=enderman,distance=..40] at @s if entity @e[type=snowball,distance=..4] run summon tnt
execute as @a[tag=ak.ep] at @s unless entity @e[type=ender_pearl] run function ancientkingg:__generated__/execute/1
execute as @a[scores={ak.ep=1..}] at @s run function ancientkingg:__generated__/execute/3
execute as @e[tag=ak.explode] at @s run tp @s ~ ~0.05 ~ ~15 ~
execute as @e[tag=ak.explode,scores={ak.var=20..}] at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[tag=ak.explode,scores={ak.var=40..}] at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[tag=ak.explode,scores={ak.var=60..}] at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[tag=ak.explode,scores={ak.var=80..}] at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[tag=ak.explode] at @s run function ancientkingg:__generated__/execute/11
scoreboard players add @e[tag=ak.explode] ak.var 1