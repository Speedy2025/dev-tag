# By: rx97
# 01 Apr 21
# 
#> @s: player
#> gen player

#define storage rx:temp

tag @s add rx.self

execute unless score @s rx.tag.uid = @s rx.tag.uid store result score @s rx.tag.uid run scoreboard players add $next rx.tag.uid 1

scoreboard players operation $uid rx.temp = @s rx.tag.uid
execute at @s[predicate=rx.tag:hold_stick] anchored eyes positioned ^ ^ ^1 as @e[type=#arrows, distance=..3.5, tag=!rx.tag.arrow, tag=!rx.tag.fired] run function rx.tag:arrow/freeze
execute if entity @s[predicate=rx.tag:hold_stick, scores={rx.tag.sneak=1..}] run data modify storage rx:temp tag.Rotation set from entity @s Rotation
execute if entity @s[predicate=rx.tag:hold_stick, scores={rx.tag.sneak=1..}] as @e[type=#arrows, tag=rx.tag.arrow, tag=!rx.tag.fired, limit=3, sort=random] if score @s rx.tag.uid = $uid rx.temp run function rx.tag:arrow/fire

tag @s remove rx.self
