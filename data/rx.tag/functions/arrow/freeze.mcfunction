# By: rx97
# 01 Apr 21
# 
#> @s: arrow
#> freeze arrow

#> -> rx.tag.vel
function rx.tag:arrow/calc_velocity

#> take ownership
scoreboard players operation @s rx.tag.uid = $uid rx.temp
data modify entity @s Owner set from entity @s UUID

#> freeze arrow
data modify entity @s Motion set value [0.0d, 0.0d, 0.0d]
data modify entity @s NoGravity set value 1b
data modify entity @s Air set value 1s

#> tag and bag
tag @s add rx.tag.arrow
