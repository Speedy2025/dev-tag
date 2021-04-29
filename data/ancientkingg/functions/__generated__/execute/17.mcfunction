#built using mc-build (https://github.com/mc-build/mc-build)

data merge entity @s {NoAI:1b,Invulnerable:1b}
execute if entity @s[type=sheep] run data merge entity @s {CustomNameVisible:0b,CustomName:'{"text":"jeb_"}'}
tag @s add ak.explode
playsound minecraft:block.beacon.ambient master @a ~ ~ ~ 1 0.1
schedule function ancientkingg:__generated__/schedule/0 101t append