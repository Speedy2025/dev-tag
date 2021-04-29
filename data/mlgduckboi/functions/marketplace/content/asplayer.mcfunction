tag @s remove mlg_bought
execute store result score .temp mlg_id run clear @s player_head{skinpack:1}
execute if score .temp mlg_id matches 1.. run function mlgduckboi:marketplace/content/amogus
execute store result score .temp mlg_id run clear @s player_head{skinpack:2}
execute if score .temp mlg_id matches 1.. run function mlgduckboi:marketplace/content/anime
execute store result score .temp mlg_id run clear @s player_head{skinpack:3}
execute if score .temp mlg_id matches 1.. run function mlgduckboi:marketplace/content/emoji
