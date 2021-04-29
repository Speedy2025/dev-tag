# Generate random number for object orientation

scoreboard players set #input dom.value 8
function dominexis:generic/rng







# Place structure block

execute if score #output dom.value matches 0 run setblock ~ ~ ~ structure_block{mirror:"NONE"      ,rotation:"NONE"               ,mode:"LOAD",posX:-8,posY:-3,posZ:-8,name:"dominexis:mushroom_house"}
execute if score #output dom.value matches 1 run setblock ~ ~ ~ structure_block{mirror:"NONE"      ,rotation:"CLOCKWISE_90"       ,mode:"LOAD",posX:8 ,posY:-3,posZ:-8,name:"dominexis:mushroom_house"}
execute if score #output dom.value matches 2 run setblock ~ ~ ~ structure_block{mirror:"NONE"      ,rotation:"CLOCKWISE_180"      ,mode:"LOAD",posX:8 ,posY:-3,posZ:8 ,name:"dominexis:mushroom_house"}
execute if score #output dom.value matches 3 run setblock ~ ~ ~ structure_block{mirror:"NONE"      ,rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:-8,posY:-3,posZ:8 ,name:"dominexis:mushroom_house"}
execute if score #output dom.value matches 4 run setblock ~ ~ ~ structure_block{mirror:"LEFT_RIGHT",rotation:"NONE"               ,mode:"LOAD",posX:-8,posY:-3,posZ:8 ,name:"dominexis:mushroom_house"}
execute if score #output dom.value matches 5 run setblock ~ ~ ~ structure_block{mirror:"LEFT_RIGHT",rotation:"CLOCKWISE_90"       ,mode:"LOAD",posX:-8,posY:-3,posZ:-8,name:"dominexis:mushroom_house"}
execute if score #output dom.value matches 6 run setblock ~ ~ ~ structure_block{mirror:"LEFT_RIGHT",rotation:"CLOCKWISE_180"      ,mode:"LOAD",posX:8 ,posY:-3,posZ:-8,name:"dominexis:mushroom_house"}
execute if score #output dom.value matches 7 run setblock ~ ~ ~ structure_block{mirror:"LEFT_RIGHT",rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:8 ,posY:-3,posZ:8 ,name:"dominexis:mushroom_house"}

setblock ~ ~1 ~ redstone_block