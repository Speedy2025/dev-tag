summon pufferfish ~ ~ ~ {Tags:["mlg_init"],PuffState:3}
data merge storage mlgduckboi:main {mot:[0.0d,0.0d,0.0d]}
execute store result storage mlgduckboi:main mot[0] double 0.0001 run data get entity @s Motion[0] 50000
execute store result storage mlgduckboi:main mot[1] double 0.0001 run data get entity @s Motion[1] 30000
execute store result storage mlgduckboi:main mot[2] double 0.0001 run data get entity @s Motion[2] 50000
execute as @e[tag=mlg_init] run data modify entity @s Motion set from storage mlgduckboi:main mot
kill @s
tag @e[tag=mlg_init] remove mlg_init