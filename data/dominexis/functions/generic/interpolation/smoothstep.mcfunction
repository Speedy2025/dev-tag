# Compute function (scale factor 10000)

scoreboard players operation #output dom.value = #input dom.value
scoreboard players operation #output dom.value *= #input dom.value
scoreboard players operation #output dom.value /= #10000 dom.value
scoreboard players operation #input dom.value *= #output dom.value
scoreboard players operation #input dom.value /= #10000 dom.value
scoreboard players operation #output dom.value *= #3 dom.value
scoreboard players operation #input dom.value *= #2 dom.value
scoreboard players operation #output dom.value -= #input dom.value