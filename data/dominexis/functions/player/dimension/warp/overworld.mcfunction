# Teleport to dimension

execute in overworld run teleport @s ~ 128 ~







# Give resistance effect

effect give @s resistance 7 4 true
effect give @s slow_falling 3 0 true







# Set score

scoreboard players set @s dom.dimension 2







# Send thank you message

tellraw @s ["Thank you for your kind deposit! Come again! :D"]