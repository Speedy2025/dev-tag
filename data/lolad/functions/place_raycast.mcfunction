advancement revoke @s only lolad:place_block

execute if block ~ ~ ~ #lolad:reach_through positioned ^ ^ ^0.01 run function lolad:place_raycast
execute unless block ~ ~ ~ #lolad:reach_through run function lolad:place_spread