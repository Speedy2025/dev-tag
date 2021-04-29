# Teleport

function dominexis:player/marker/teleport







# Spawn time bomb


execute store result score #boolean dom.value if entity @e[type=area_effect_cloud,tag=dom.entity.type.time_bomb,tag=dom.entity.target,distance=..32]
execute if score #boolean dom.value matches 0 run summon area_effect_cloud ~ ~ ~ {Tags:["dom.entity","dom.entity.type.time_bomb","dom.entity.property.player_link","dom.entity.target"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if score #boolean dom.value matches 0 run playsound minecraft:ambient.cave master @a[tag=dom.player.target] ~ ~ ~