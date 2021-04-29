# Assign ID

execute unless score @s dom.id = @s dom.id store result score @s dom.id run scoreboard players add #global dom.id 1







# Get coordinates

data modify storage dominexis:data tag.Pos set from entity @s Pos
execute store result score @s dom.x run data get storage dominexis:data tag.Pos[0] 64
execute store result score @s dom.y run data get storage dominexis:data tag.Pos[1] 64
execute store result score @s dom.z run data get storage dominexis:data tag.Pos[2] 64







# Target linked entities

tag @s add dom.player.target

scoreboard players operation #local dom.id = @s dom.id
execute as @e[type=area_effect_cloud,tag=dom.entity.property.player_link] if score @s dom.id = #local dom.id run tag @s add dom.entity.target







# Spawn player marker if one doesn't exist

execute unless entity @e[type=area_effect_cloud,tag=dom.entity.type.player_marker,tag=dom.entity.target] run summon area_effect_cloud ~ ~ ~ {Tags:["dom.entity","dom.entity.type.player_marker","dom.entity.property.player_link","dom.entity.target"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}







# Manage marker

execute as @e[type=area_effect_cloud,tag=dom.entity.type.player_marker,tag=dom.entity.target] at @s run function dominexis:player/marker/main







# Manage time bomb

execute as @e[type=area_effect_cloud,tag=dom.entity.type.time_bomb,tag=dom.entity.target] at @s run function dominexis:player/time_bomb/main







# Assign ID

scoreboard players operation @e[type=area_effect_cloud,tag=dom.entity.target] dom.id = @s dom.id







# Remove target tag

tag @s remove dom.player.target
tag @e[type=area_effect_cloud,tag=dom.entity.property.player_link] remove dom.entity.target







# Manage dimension warping

execute unless score @s dom.dimension = @s dom.dimension run function dominexis:player/dimension/assign

execute if score @s[predicate= dominexis:dimension/overworld ] dom.dimension matches 0 run function dominexis:player/dimension/warp/tollbooth
execute if score @s[predicate=!dominexis:dimension/tollbooth ] dom.dimension matches 1 run function dominexis:player/dimension/warp/tollbooth
execute if score @s[predicate= dominexis:dimension/the_nether] dom.dimension matches 2 run function dominexis:player/dimension/warp/tollbooth

function dominexis:player/dimension/assign







# Manage TNT throwing

execute store result score #boolean dom.value if predicate dominexis:dimension/overworld

execute if score #boolean dom.value matches 1 if score @s dom.redstone matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.repeater matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.comparator matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.red_torch matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.red_block matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.piston matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.stick_piston matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.hopper matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.dispenser matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.dropper matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.observer matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.daylight matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.note_block matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.red_lamp matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.tripwire matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.lever matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.target matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.door matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.trapdoor matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.cmd matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.cmd_chain matches 1.. run function dominexis:player/tnt_throw
execute if score #boolean dom.value matches 1 if score @s dom.cmd_repeat matches 1.. run function dominexis:player/tnt_throw

scoreboard players set @s dom.redstone 0
scoreboard players set @s dom.repeater 0
scoreboard players set @s dom.comparator 0
scoreboard players set @s dom.red_torch 0
scoreboard players set @s dom.red_block 0
scoreboard players set @s dom.piston 0
scoreboard players set @s dom.stick_piston 0
scoreboard players set @s dom.hopper 0
scoreboard players set @s dom.dispenser 0
scoreboard players set @s dom.dropper 0
scoreboard players set @s dom.observer 0
scoreboard players set @s dom.daylight 0
scoreboard players set @s dom.note_block 0
scoreboard players set @s dom.red_lamp 0
scoreboard players set @s dom.tripwire 0
scoreboard players set @s dom.lever 0
scoreboard players set @s dom.target 0
scoreboard players set @s dom.door 0
scoreboard players set @s dom.trapdoor 0
scoreboard players set @s dom.cmd 0
scoreboard players set @s dom.cmd_chain 0
scoreboard players set @s dom.cmd_repeat 0







# Manage lightning strikes

title @s[tag=!dom.player.property.too_close,predicate=dominexis:dimension/too_close_to_ceiling] times 10 70 20
title @s[tag=!dom.player.property.too_close,predicate=dominexis:dimension/too_close_to_ceiling] title {"text":"HEY! Back off buddy!","color":"dark_red","bold":true}
execute if entity @s[tag=!dom.player.property.too_close,predicate=dominexis:dimension/too_close_to_ceiling] run playsound minecraft:entity.ghast.hurt master @s ~ ~ ~ 10
tag @s[predicate= dominexis:dimension/too_close_to_ceiling] add dom.player.property.too_close
tag @s[predicate=!dominexis:dimension/too_close_to_ceiling] remove dom.player.property.too_close

execute store result score #math_00 dom.value run time query gametime
scoreboard players operation #math_00 dom.value %= #20 dom.value
execute if score #math_00 dom.value matches 0 if predicate dominexis:dimension/too_close_to_ceiling run summon lightning_bolt