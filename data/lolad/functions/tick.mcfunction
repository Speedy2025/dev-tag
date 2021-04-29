execute as @a at @s run fill ~-10 ~-10 ~-10 ~10 ~ ~10 stone replace diamond_ore
execute as @a at @s run fill ~-10 ~ ~-10 ~10 ~10 ~10 stone replace diamond_ore

tp @e[type=trader_llama] 0 -200 0
execute as @e[type=wandering_trader,scores={laser=1..}] at @s run function lolad:laser

execute as @e[tag=!dinnerbone] run data merge entity @s {CustomName: '"Dinnerbone"', CustomNameVisible: 0b}
tag @e add dinnerbone