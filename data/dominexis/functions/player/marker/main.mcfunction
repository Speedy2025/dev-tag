# Increment timer

scoreboard players add @s dom.timer 1







# Teleport to player if too far away

execute unless entity @a[tag=dom.player.target,distance=..16] run function dominexis:player/marker/teleport







# Spawn time bomb if 30 seconds have passed

execute if score @s dom.timer matches 600.. run function dominexis:player/marker/spawn_time_bomb