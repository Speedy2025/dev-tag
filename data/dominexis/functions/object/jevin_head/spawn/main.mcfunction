# Spawn Jevin head

summon area_effect_cloud ~ ~ ~ {Tags:["dom.entity","dom.entity.type.jevin_head","dom.entity.target.spawn"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,Passengers:[{id:"minecraft:armor_stand",Tags:["dom.entity","dom.entity.type.jevin_head","dom.entity.target.spawn"],NoGravity:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;309103405,-1035456121,-1838380243,-1035460217],Properties:{textures:[{Value:"e3RleHR1cmVzOntTS0lOOnt1cmw6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzQwY2ZiZDgwYWMxZWVkNjBjODgzNjA4MGNlZjhiZjVkOGI2MDZjYmE5YWEwMTc2YjBiZDNhYzk3Y2E3NzEzZSJ9fX0="}]}}}}]}]}







# Assign IDs

scoreboard players add #global dom.id 1
scoreboard players operation @e[type=#dominexis:system,tag=dom.entity.target.spawn] dom.id = #global dom.id







# Assign scores

execute as @e[type=area_effect_cloud,tag=dom.entity.target.spawn,limit=1] run function dominexis:object/jevin_head/spawn/scores







# Remove target tag

tag @e[type=#dominexis:system,tag=dom.entity] remove dom.entity.target.spawn