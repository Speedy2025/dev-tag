# Generate random number

scoreboard players operation #rng dom.value *= #rng_multiplier dom.value
scoreboard players operation #rng dom.value += #rng_increment dom.value







# Swap bits

scoreboard players operation #rng_bit_swap dom.value = #rng dom.value
scoreboard players operation #rng_bit_swap dom.value /= #65536 dom.value
scoreboard players operation #rng dom.value *= #65536 dom.value
scoreboard players operation #rng dom.value += #rng_bit_swap dom.value







# Return output

scoreboard players operation #output dom.value = #rng dom.value
scoreboard players operation #output dom.value %= #input dom.value