#built using mc-build (https://github.com/mc-build/mc-build)

particle minecraft:totem_of_undying ~ ~1 ~ 0.1 0.1 0.1 0.5 2000
summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;44269],FadeColors:[I;4325481]}]}}}}
tp @s ~ ~-300 ~
kill @s