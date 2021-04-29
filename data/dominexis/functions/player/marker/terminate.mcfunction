# Target player

scoreboard players operation #local dom.id = @s dom.id
execute as @a if score @s dom.id = #local dom.id run tag @s add dom.player.target







# Terminate if player is absent

execute unless entity @a[tag=dom.player.target] run kill @s







# Remove target tag

tag @a remove dom.player.target