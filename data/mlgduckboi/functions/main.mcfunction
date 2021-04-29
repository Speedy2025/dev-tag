
# assigning id's
execute as @a[limit=1,tag=!mlg_hasID] run function mlgcuckboi:get_id

# marketplace tp
scoreboard players enable @a marketplace
execute as @a[tag=mlg_mp,scores={marketplace=1..}] at @s run function mlgduckboi:marketplace/return
execute as @a[tag=!mlg_mp,scores={marketplace=1..}] at @s run function mlgduckboi:marketplace/goto

# throwing fish
execute at @a[scores={mlg_drop.p=1..}] as @e[type=item,nbt={Item:{id:"minecraft:pufferfish"},Age:0s}] at @s run function mlgduckboi:throw/puffer
scoreboard players set @a mlg_drop.p 0
execute at @a[scores={mlg_drop.s=1..}] as @e[type=item,nbt={Item:{id:"minecraft:salmon"},Age:0s}] at @s run function mlgduckboi:throw/salmon
scoreboard players set @a mlg_drop.s 0
execute at @a[scores={mlg_drop.c=1..}] as @e[type=item,nbt={Item:{id:"minecraft:cod"},Age:0s}] at @s run function mlgduckboi:throw/cod
scoreboard players set @a mlg_drop.c 0

# godmode effects handler
effect clear @a[scores={mlg_ate.p=1..4}] poison
effect clear @a[scores={mlg_ate.p=1..4}] hunger
effect clear @a[scores={mlg_ate.p=1}] nausea

# spawning entities
execute unless entity @e[type=zombie,tag=mlg_hb] if predicate mlgduckboi:night_chance at @r[tag=!mlg_mp] run function mlgduckboi:summon/herobrine
execute if predicate mlgduckboi:loot_pig_chance as @r[tag=!mlg_mp] at @s run function mlgduckboi:summon/loot_pig

# killing unmounted loot crates
execute as @e[type=falling_block,tag=mlg_lb,predicate=!mlgduckboi:has_mount] run kill @s

# sky
execute unless entity @e[tag=mlg_bee] at @r run function mlgduckboi:summon/skylinerw
execute as @e[tag=mlg_bee] at @s run function mlgduckboi:skys_wisdom