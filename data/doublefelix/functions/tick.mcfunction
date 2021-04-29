execute as @a at @s if block ~ ~ ~ minecraft:polished_blackstone_pressure_plate[powered=true] run summon minecraft:tnt ~ ~ ~
execute as @a at @s if block ~ ~ ~ minecraft:tripwire run function doublefelix:self_trapping_traps
execute as @e[type=minecraft:arrow,nbt={inGround:1b}] at @s if block ~ ~-1 ~ minecraft:bedrock run function doublefelix:boombox
execute as @a[scores={felix.victory1=1..}] run function doublefelix:victory1