tellraw @s ["",{"text":"The power is too much for your mortal body, you loose your grip on reality","color":"aqua"}]
gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
tellraw @a ["",{"selector":"@s"},{"text":" overdosed on pufferfish"}]
scoreboard players set @s mlg_ate.p 0