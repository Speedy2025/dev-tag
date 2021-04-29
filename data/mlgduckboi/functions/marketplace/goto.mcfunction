tag @s add mlg_mp
execute store result score @s mlg_prev_gm run data get entity @s playerGameType 
gamemode adventure
summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["mlg_tp","mlg_init"]}
scoreboard players operation @e[tag=mlg_init] mlg_id = @s mlg_id
tag @e[tag=mlg_init] remove mlg_init
tp 29999981 77.00 29999982
scoreboard players set @s marketplace 0