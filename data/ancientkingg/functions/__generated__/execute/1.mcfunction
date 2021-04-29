#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set #execute LANG_MC_INTERNAL 0
execute if entity @s[tag=ak.end_ep] run function ancientkingg:__generated__/conditional/0
execute if score #execute LANG_MC_INTERNAL matches 0 run function ancientkingg:__generated__/conditional/1
tag @s remove ak.ep
tag @s remove ak.end_ep