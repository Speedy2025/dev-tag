# By: rx97
# 01 Apr 21
# 
#> load

#alias entity helper e92d7aeb-0f00-527b-8b7b-a769574df0c4

scoreboard objectives add rx.temp dummy
scoreboard objectives add rx.tag.sneak minecraft.custom:sneak_time
scoreboard objectives add rx.tag.vel dummy
scoreboard objectives add rx.tag.uid dummy

execute unless score $next rx.tag.uid = $next rx.tag.uid run scoreboard players set $next rx.tag.uid 0

#> forceload center + temp entity
forceload add 0 0
execute unless entity e92d7aeb-0f00-527b-8b7b-a769574df0c4 run summon minecraft:area_effect_cloud 0.0 0.0 0.0 {Tags: ['global.ignore', 'NoLoop'], Age:-2147483648,Duration:-1,WaitTime:-2147483648, UUID:[I;-382895381,251679355,-1954830487,1464725700]}
