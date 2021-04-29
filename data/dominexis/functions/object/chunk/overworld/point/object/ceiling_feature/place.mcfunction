# Generate random number for object orientation

scoreboard players set #input dom.value 16
function dominexis:generic/rng







# Place structure block

execute if score #output dom.value matches 00 run setblock ~ ~ ~ structure_block{mirror:"NONE"      ,rotation:"NONE"               ,mode:"LOAD",posX:-3,posY:-3,posZ:-3,name:"dominexis:eye"  }
execute if score #output dom.value matches 01 run setblock ~ ~ ~ structure_block{mirror:"NONE"      ,rotation:"CLOCKWISE_90"       ,mode:"LOAD",posX:3 ,posY:-3,posZ:-3,name:"dominexis:eye"  }
execute if score #output dom.value matches 02 run setblock ~ ~ ~ structure_block{mirror:"NONE"      ,rotation:"CLOCKWISE_180"      ,mode:"LOAD",posX:3 ,posY:-3,posZ:3 ,name:"dominexis:eye"  }
execute if score #output dom.value matches 03 run setblock ~ ~ ~ structure_block{mirror:"NONE"      ,rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:-3,posY:-3,posZ:3 ,name:"dominexis:eye"  }
execute if score #output dom.value matches 04 run setblock ~ ~ ~ structure_block{mirror:"LEFT_RIGHT",rotation:"NONE"               ,mode:"LOAD",posX:-3,posY:-3,posZ:3 ,name:"dominexis:eye"  }
execute if score #output dom.value matches 05 run setblock ~ ~ ~ structure_block{mirror:"LEFT_RIGHT",rotation:"CLOCKWISE_90"       ,mode:"LOAD",posX:-3,posY:-3,posZ:-3,name:"dominexis:eye"  }
execute if score #output dom.value matches 06 run setblock ~ ~ ~ structure_block{mirror:"LEFT_RIGHT",rotation:"CLOCKWISE_180"      ,mode:"LOAD",posX:3 ,posY:-3,posZ:-3,name:"dominexis:eye"  }
execute if score #output dom.value matches 07 run setblock ~ ~ ~ structure_block{mirror:"LEFT_RIGHT",rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:3 ,posY:-3,posZ:3 ,name:"dominexis:eye"  }
execute if score #output dom.value matches 08 run setblock ~ ~ ~ structure_block{mirror:"NONE"      ,rotation:"NONE"               ,mode:"LOAD",posX:-3,posY:-3,posZ:-3,name:"dominexis:mouth"}
execute if score #output dom.value matches 09 run setblock ~ ~ ~ structure_block{mirror:"NONE"      ,rotation:"CLOCKWISE_90"       ,mode:"LOAD",posX:3 ,posY:-3,posZ:-3,name:"dominexis:mouth"}
execute if score #output dom.value matches 10 run setblock ~ ~ ~ structure_block{mirror:"NONE"      ,rotation:"CLOCKWISE_180"      ,mode:"LOAD",posX:3 ,posY:-3,posZ:3 ,name:"dominexis:mouth"}
execute if score #output dom.value matches 11 run setblock ~ ~ ~ structure_block{mirror:"NONE"      ,rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:-3,posY:-3,posZ:3 ,name:"dominexis:mouth"}
execute if score #output dom.value matches 12 run setblock ~ ~ ~ structure_block{mirror:"LEFT_RIGHT",rotation:"NONE"               ,mode:"LOAD",posX:-3,posY:-3,posZ:3 ,name:"dominexis:mouth"}
execute if score #output dom.value matches 13 run setblock ~ ~ ~ structure_block{mirror:"LEFT_RIGHT",rotation:"CLOCKWISE_90"       ,mode:"LOAD",posX:-3,posY:-3,posZ:-3,name:"dominexis:mouth"}
execute if score #output dom.value matches 14 run setblock ~ ~ ~ structure_block{mirror:"LEFT_RIGHT",rotation:"CLOCKWISE_180"      ,mode:"LOAD",posX:3 ,posY:-3,posZ:-3,name:"dominexis:mouth"}
execute if score #output dom.value matches 15 run setblock ~ ~ ~ structure_block{mirror:"LEFT_RIGHT",rotation:"COUNTERCLOCKWISE_90",mode:"LOAD",posX:3 ,posY:-3,posZ:3 ,name:"dominexis:mouth"}

setblock ~ ~1 ~ redstone_block