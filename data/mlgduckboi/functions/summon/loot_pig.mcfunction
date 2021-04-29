summon pig ~ 200 ~ {DeathLootTable:"mlgduckboi:entities/loot_pig",Passengers:[{id:"falling_block",BlockState:{Name:"minecraft:oak_planks"},Time:-2147483648,NoGravity:1b,Tags:["mlg_lb"]}],Tags:["mlg_lp","mlg_init","dinnerbone"],CusomName:'"Loot Pig"',CustomNameVisible:1b}
tellraw @a [{"text":"A loot pig spawned near ","color":"yellow"},{"selector":"@s"}]
spreadplayers ~ ~ 0 5 true @e[tag=mlg_init]
tag @e[tag=mlg_lp] remove mlg_init
