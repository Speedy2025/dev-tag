tag @s remove mlg_mp
gamemode survival @s[scores={mlg_prev_gm=0}]
gamemode creative @s[scores={mlg_prev_gm=1}]
gamemode adventure @s[scores={mlg_prev_gm=2}]
gamemode spectator @s[scores={mlg_prev_gm=3}]
scoreboard players operation .local mlg_id = @s mlg_id
tag @s add mlg_sp
execute as @e[tag=mlg_tp] if score @s mlg_id = .local mlg_id at @s run function mlgduckboi:marketplace/marker
tag @s remove mlg_sp
scoreboard players set @s marketplace 0