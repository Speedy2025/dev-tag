# Teleport to dimension

execute in the_nether run teleport @s ~ 64 ~

execute at @s run fill ~-1 ~ ~-1 ~1 ~2 ~1 air
execute at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 netherrack







# Give resistance effect

effect give @s resistance 5 4 true







# Set score

scoreboard players set @s dom.dimension 0







# Send thank you message

tellraw @s ["Thank you for your kind deposit! Come again! :D"]