# Initialize output

scoreboard players set #output dom.value 0







# Run iterations (scale factor 1)

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 32768
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 32768

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 16384
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 16384

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 8192
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 8192

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 4096
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 4096

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 2048
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 2048

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 1024
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 1024

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 512
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 512

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 256
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 256

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 128
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 128

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 64
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 64

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 32
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 32

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 16
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 16

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 8
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 8

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 4
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 4

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 2
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 2

scoreboard players operation #square_root_math dom.value = #output dom.value
scoreboard players add #square_root_math dom.value 1
scoreboard players operation #square_root_math dom.value *= #square_root_math dom.value
execute if score #square_root_math dom.value <= #input dom.value run scoreboard players add #output dom.value 1