# Spawn entity

execute if entity @s[predicate=dominexis:dimension/overworld] run summon area_effect_cloud ~ 0 ~ {Tags:["dom.entity","dom.entity.type.chunk","dom.entity.property.overworld"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
execute if entity @s[predicate=dominexis:dimension/tollbooth] run summon area_effect_cloud ~ 0 ~ {Tags:["dom.entity","dom.entity.type.chunk","dom.entity.property.tollbooth"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}







# Set object phase

scoreboard players set #object_phase dom.value 1