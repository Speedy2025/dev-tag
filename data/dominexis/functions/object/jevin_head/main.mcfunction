# Target entities

scoreboard players operation #local dom.id = @s dom.id
execute as @e[type=#dominexis:system,tag=dom.entity.type.jevin_head] if score @s dom.id = #local dom.id run tag @s add dom.entity.target







# Assign point of interest to nearest player

scoreboard players operation #poi_x dom.value = @p dom.x
scoreboard players operation #poi_y dom.value = @p dom.y
scoreboard players operation #poi_z dom.value = @p dom.z
scoreboard players add #poi_y dom.value 96







# Get rotation to target

scoreboard players operation #poi_x dom.value -= @s dom.x
scoreboard players operation #poi_y dom.value -= @s dom.y
scoreboard players operation #poi_z dom.value -= @s dom.z

scoreboard players remove #poi_y dom.value 128



scoreboard players operation #input_x dom.value = #poi_z dom.value
scoreboard players operation #input_y dom.value = #poi_x dom.value
scoreboard players operation #input_y dom.value *= #-1 dom.value
function dominexis:generic/trigonometry/arctangent
scoreboard players operation #yaw dom.value = #output dom.value

scoreboard players operation #math_00 dom.value = #poi_x dom.value
scoreboard players operation #math_01 dom.value = #poi_z dom.value
scoreboard players operation #math_00 dom.value *= #math_00 dom.value
scoreboard players operation #math_01 dom.value *= #math_01 dom.value
scoreboard players operation #input dom.value = #math_00 dom.value
scoreboard players operation #input dom.value += #math_01 dom.value
function dominexis:generic/square_root

scoreboard players operation #input_x dom.value = #output dom.value
scoreboard players operation #input_y dom.value = #poi_y dom.value
scoreboard players operation #input_y dom.value *= #-1 dom.value
function dominexis:generic/trigonometry/arctangent
scoreboard players operation #pitch dom.value = #output dom.value







# Rotate entity towards target

function dominexis:object/jevin_head/generic/rotation







# Calculate vector

scoreboard players operation #input dom.value = @s dom.yaw
function dominexis:generic/trigonometry/sine
scoreboard players operation #vector_x dom.value = #output dom.value
scoreboard players operation #vector_x dom.value *= #-1 dom.value
function dominexis:generic/trigonometry/cosine
scoreboard players operation #vector_z dom.value = #output dom.value

scoreboard players operation #input dom.value = @s dom.pitch
function dominexis:generic/trigonometry/cosine
scoreboard players operation #vector_x dom.value *= #output dom.value
scoreboard players operation #vector_z dom.value *= #output dom.value
scoreboard players operation #vector_x dom.value /= #1000 dom.value
scoreboard players operation #vector_z dom.value /= #1000 dom.value
function dominexis:generic/trigonometry/sine
scoreboard players operation #vector_y dom.value = #output dom.value
scoreboard players operation #vector_y dom.value *= #-1 dom.value







# Move away from other heads

scoreboard players operation #offset_x dom.value = @s dom.x
scoreboard players operation #offset_y dom.value = @s dom.y
scoreboard players operation #offset_z dom.value = @s dom.z

execute as @e[type=area_effect_cloud,tag=dom.entity.type.jevin_head,tag=!dom.entity.target,distance=..1,limit=1] run function dominexis:object/jevin_head/generic/push

scoreboard players operation #offset_x dom.value *= #-1 dom.value
scoreboard players operation #offset_y dom.value *= #-1 dom.value
scoreboard players operation #offset_z dom.value *= #-1 dom.value
scoreboard players operation #offset_x dom.value += @s dom.x
scoreboard players operation #offset_y dom.value += @s dom.y
scoreboard players operation #offset_z dom.value += @s dom.z
scoreboard players operation #offset_x dom.value /= #10 dom.value
scoreboard players operation #offset_y dom.value /= #10 dom.value
scoreboard players operation #offset_z dom.value /= #10 dom.value

scoreboard players operation @s dom.motion_x += #offset_x dom.value
scoreboard players operation @s dom.motion_y += #offset_y dom.value
scoreboard players operation @s dom.motion_z += #offset_z dom.value







# Modify motion

scoreboard players operation #vector_x dom.value /= #100 dom.value
scoreboard players operation #vector_y dom.value /= #100 dom.value
scoreboard players operation #vector_z dom.value /= #100 dom.value
scoreboard players operation #vector_x dom.value /= #2 dom.value
scoreboard players operation #vector_y dom.value /= #2 dom.value
scoreboard players operation #vector_z dom.value /= #2 dom.value

scoreboard players operation @s dom.motion_x += #vector_x dom.value
scoreboard players operation @s dom.motion_y += #vector_y dom.value
scoreboard players operation @s dom.motion_z += #vector_z dom.value

scoreboard players set #friction_numerator dom.value 95
scoreboard players set #friction_denominator dom.value 100

scoreboard players operation @s dom.motion_x *= #friction_numerator dom.value
scoreboard players operation @s dom.motion_y *= #friction_numerator dom.value
scoreboard players operation @s dom.motion_z *= #friction_numerator dom.value
scoreboard players operation @s dom.motion_x /= #friction_denominator dom.value
scoreboard players operation @s dom.motion_y /= #friction_denominator dom.value
scoreboard players operation @s dom.motion_z /= #friction_denominator dom.value







# Move entity along current trajectory

scoreboard players operation @s dom.x += @s dom.motion_x
scoreboard players operation @s dom.y += @s dom.motion_y
scoreboard players operation @s dom.z += @s dom.motion_z

data modify storage dominexis:data tag set value {Air:0s,Pos:[0.0d,0.0d,0.0d]}
execute store result storage dominexis:data tag.Pos[0] double 0.015625 run scoreboard players get @s dom.x
execute store result storage dominexis:data tag.Pos[1] double 0.015625 run scoreboard players get @s dom.y
execute store result storage dominexis:data tag.Pos[2] double 0.015625 run scoreboard players get @s dom.z
execute store result storage dominexis:data tag.Air short 1 run time query gametime
data modify entity @s {} merge from storage dominexis:data tag







# Assemble entities

execute at @s run teleport @s ~ ~-0.475 ~







# Hurt players

execute at @s positioned ~ ~1 ~ run effect give @a[distance=..1] absorption 1 0 true
execute at @s positioned ~ ~1 ~ run effect give @a[distance=..1] instant_damage 1 0 true







# Play sound

scoreboard players set #input dom.value 100
function dominexis:generic/rng
execute if score #output dom.value matches ..2 run playsound minecraft:entity.wolf.ambient master @a







# Terminate under certain conditions

execute unless entity @a[distance=..100] run function dominexis:object/jevin_head/generic/terminate
execute at @s if entity @e[type=armor_stand,tag=dom.entity.target,predicate=dominexis:on_fire] run function dominexis:object/jevin_head/generic/terminate
execute at @s if block ~ ~1 ~ #dominexis:kill_jevin run function dominexis:object/jevin_head/generic/terminate
execute at @s if block ~ ~2 ~ #dominexis:kill_jevin run function dominexis:object/jevin_head/generic/terminate







# Remove target tag

tag @e[type=#dominexis:system,tag=dom.entity] remove dom.entity.target