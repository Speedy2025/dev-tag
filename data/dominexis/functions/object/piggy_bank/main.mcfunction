# If items exist nearby, warp players

execute if entity @s[tag=dom.entity.property.overworld] as @e[type=item,nbt={Item:{Count:64b,tag:{minecoin:1b}}},distance=..1] run function dominexis:object/piggy_bank/overworld
execute if entity @s[tag=dom.entity.property.nether   ] as @e[type=item,nbt={Item:{Count:64b,tag:{minecoin:1b}}},distance=..1] run function dominexis:object/piggy_bank/nether