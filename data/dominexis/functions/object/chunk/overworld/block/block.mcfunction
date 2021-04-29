# Place block

execute if score #channel_03_value dom.value matches ..0 if block ~ ~ ~ air run setblock ~ ~ ~ red_concrete
execute if score #channel_03_value dom.value matches 1.. if block ~ ~ ~ air run setblock ~ ~ ~ nether_wart_block
execute if score #channel_03_value dom.value matches ..0 if block ~ ~ ~ red_stained_glass run setblock ~ ~ ~ red_concrete
execute if score #channel_03_value dom.value matches 1.. if block ~ ~ ~ red_stained_glass run setblock ~ ~ ~ nether_wart_block