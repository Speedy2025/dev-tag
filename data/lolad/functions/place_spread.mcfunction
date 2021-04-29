# Reset stuff
setblock 3000000 0 3000000 chest
data remove storage lolad BlockName

# Summon new block
summon falling_block 0 0 0 {Tags:["new"],Time:-2000,BlockState:{Name:"minecraft:void_air"}}

# Try to get the original block's id
loot insert 3000000 0 3000000 mine ~ ~ ~ netherite_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1s}]}
data modify storage lolad BlockName set from block 3000000 0 3000000 Items[0].id
execute unless data storage lolad BlockName run loot insert 3000000 0 3000000 mine ~ ~ ~ shears
data modify storage lolad BlockName set from block 3000000 0 3000000 Items[0].id

# Use that id
data modify entity @e[type=falling_block,tag=new,limit=1] BlockState.Name set from storage lolad BlockName

# Hopefully move the block around the player
execute if data storage lolad BlockName run function lolad:spread_until_ground
execute unless data storage lolad BlockName run kill @e[type=falling_block,tag=new]
execute unless data storage lolad {BlockName: "minecraft:sand"} run kill @e[type=falling_block,tag=new,nbt={BlockState:{Name:"minecraft:sand"}}]

tag @e remove new

# Remove the original block
setblock ~ ~ ~ air