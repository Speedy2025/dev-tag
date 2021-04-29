# Teleport

execute at @a[tag=dom.player.target] run teleport @s ~ ~ ~







# Air toggle

execute store result entity @s Air short 1 run scoreboard players add #air_toggle_timer dom.value 1







# Reset timer

scoreboard players set @s dom.timer 0