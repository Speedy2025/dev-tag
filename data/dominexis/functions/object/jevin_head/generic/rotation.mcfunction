# Rotate head toward target along yaw

scoreboard players set #interpolation_location dom.value 0

scoreboard players operation #interpolation_destination dom.value = #yaw dom.value
scoreboard players operation #interpolation_destination dom.value -= @s dom.yaw
scoreboard players operation #interpolation_destination dom.value %= #3600 dom.value
execute if score #interpolation_destination dom.value matches 1801.. run scoreboard players remove #interpolation_destination dom.value 3600

scoreboard players operation #interpolation_speed dom.value = @s dom.motion_yaw
scoreboard players set #interpolation_acceleration dom.value 100

function dominexis:generic/interpolation/floating_point

scoreboard players operation @s dom.yaw += #interpolation_location dom.value
scoreboard players operation @s dom.motion_yaw = #interpolation_speed dom.value







# Rotate head toward target along pitch

scoreboard players operation #interpolation_location dom.value = @s dom.pitch
scoreboard players operation #interpolation_destination dom.value = #pitch dom.value
scoreboard players operation #interpolation_speed dom.value = @s dom.motion_pitch
scoreboard players set #interpolation_acceleration dom.value 100

function dominexis:generic/interpolation/floating_point

scoreboard players operation @s dom.pitch = #interpolation_location dom.value
scoreboard players operation @s dom.motion_pitch = #interpolation_speed dom.value







# Apply NBT

data modify storage dominexis:data tag set value {Rotation:[0.0f,0.0f],Pose:{Head:[0.0f,0.0f,0.0f]}}
execute store result storage dominexis:data tag.Pose.Head[0] float 0.1 run scoreboard players get @s dom.pitch
execute store result storage dominexis:data tag.Rotation[0] float 0.1 run scoreboard players get @s dom.yaw
execute store result storage dominexis:data tag.Rotation[1] float 0.1 run scoreboard players get @s dom.pitch
data modify entity @e[type=armor_stand,tag=dom.entity.target,limit=1] {} merge from storage dominexis:data tag