# Teleport to dimension

execute in the_nether run teleport @s ~ 256 ~







# Give resistance effect

effect give @s resistance 7 4 true
effect give @s slow_falling 3 0 true







# Set score

scoreboard players set @s dom.dimension 1







# Send message about tollbooth dimension

tellraw @s ["You attempted to switch dimensions without paying up! Please visit the nearest ",{"text":"Piggy Bank","color":"light_purple","bold":true}," and deposit 64 ",{"text":"Minecoins","color":"gold","bold":true},"."]