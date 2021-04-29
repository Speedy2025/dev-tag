# Initialize parameters

scoreboard players operation #cbrng_x dom.value = #input_x dom.value
scoreboard players operation #cbrng_y dom.value = #input_y dom.value
scoreboard players operation #cbrng_z dom.value = #input_z dom.value







# Process bits

scoreboard players operation #output dom.value = #cbrng_seed dom.value

execute if score #cbrng_x dom.value matches ..-1 run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_31 dom.value
execute if score #cbrng_x dom.value matches ..-1 run scoreboard players operation #output dom.value += #cbrng_x_increment_31 dom.value
execute store result score #cbrng_boolean dom.value if score #cbrng_x dom.value matches ..-1
execute if score #cbrng_boolean dom.value matches 1 run scoreboard players add #cbrng_x dom.value 2147483647
execute if score #cbrng_boolean dom.value matches 1 run scoreboard players add #cbrng_x dom.value 1

execute if score #cbrng_x dom.value matches 1073741824.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_30 dom.value
execute if score #cbrng_x dom.value matches 1073741824.. run scoreboard players operation #output dom.value += #cbrng_x_increment_30 dom.value
execute if score #cbrng_x dom.value matches 1073741824.. run scoreboard players remove #cbrng_x dom.value 1073741824

execute if score #cbrng_x dom.value matches 536870912.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_29 dom.value
execute if score #cbrng_x dom.value matches 536870912.. run scoreboard players operation #output dom.value += #cbrng_x_increment_29 dom.value
execute if score #cbrng_x dom.value matches 536870912.. run scoreboard players remove #cbrng_x dom.value 536870912

execute if score #cbrng_x dom.value matches 268435456.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_28 dom.value
execute if score #cbrng_x dom.value matches 268435456.. run scoreboard players operation #output dom.value += #cbrng_x_increment_28 dom.value
execute if score #cbrng_x dom.value matches 268435456.. run scoreboard players remove #cbrng_x dom.value 268435456

execute if score #cbrng_x dom.value matches 134217728.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_27 dom.value
execute if score #cbrng_x dom.value matches 134217728.. run scoreboard players operation #output dom.value += #cbrng_x_increment_27 dom.value
execute if score #cbrng_x dom.value matches 134217728.. run scoreboard players remove #cbrng_x dom.value 134217728

execute if score #cbrng_x dom.value matches 67108864.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_26 dom.value
execute if score #cbrng_x dom.value matches 67108864.. run scoreboard players operation #output dom.value += #cbrng_x_increment_26 dom.value
execute if score #cbrng_x dom.value matches 67108864.. run scoreboard players remove #cbrng_x dom.value 67108864

execute if score #cbrng_x dom.value matches 33554432.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_25 dom.value
execute if score #cbrng_x dom.value matches 33554432.. run scoreboard players operation #output dom.value += #cbrng_x_increment_25 dom.value
execute if score #cbrng_x dom.value matches 33554432.. run scoreboard players remove #cbrng_x dom.value 33554432

execute if score #cbrng_x dom.value matches 16777216.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_24 dom.value
execute if score #cbrng_x dom.value matches 16777216.. run scoreboard players operation #output dom.value += #cbrng_x_increment_24 dom.value
execute if score #cbrng_x dom.value matches 16777216.. run scoreboard players remove #cbrng_x dom.value 16777216

execute if score #cbrng_x dom.value matches 8388608.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_23 dom.value
execute if score #cbrng_x dom.value matches 8388608.. run scoreboard players operation #output dom.value += #cbrng_x_increment_23 dom.value
execute if score #cbrng_x dom.value matches 8388608.. run scoreboard players remove #cbrng_x dom.value 8388608

execute if score #cbrng_x dom.value matches 4194304.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_22 dom.value
execute if score #cbrng_x dom.value matches 4194304.. run scoreboard players operation #output dom.value += #cbrng_x_increment_22 dom.value
execute if score #cbrng_x dom.value matches 4194304.. run scoreboard players remove #cbrng_x dom.value 4194304

execute if score #cbrng_x dom.value matches 2097152.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_21 dom.value
execute if score #cbrng_x dom.value matches 2097152.. run scoreboard players operation #output dom.value += #cbrng_x_increment_21 dom.value
execute if score #cbrng_x dom.value matches 2097152.. run scoreboard players remove #cbrng_x dom.value 2097152

execute if score #cbrng_x dom.value matches 1048576.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_20 dom.value
execute if score #cbrng_x dom.value matches 1048576.. run scoreboard players operation #output dom.value += #cbrng_x_increment_20 dom.value
execute if score #cbrng_x dom.value matches 1048576.. run scoreboard players remove #cbrng_x dom.value 1048576

execute if score #cbrng_x dom.value matches 524288.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_19 dom.value
execute if score #cbrng_x dom.value matches 524288.. run scoreboard players operation #output dom.value += #cbrng_x_increment_19 dom.value
execute if score #cbrng_x dom.value matches 524288.. run scoreboard players remove #cbrng_x dom.value 524288

execute if score #cbrng_x dom.value matches 262144.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_18 dom.value
execute if score #cbrng_x dom.value matches 262144.. run scoreboard players operation #output dom.value += #cbrng_x_increment_18 dom.value
execute if score #cbrng_x dom.value matches 262144.. run scoreboard players remove #cbrng_x dom.value 262144

execute if score #cbrng_x dom.value matches 131072.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_17 dom.value
execute if score #cbrng_x dom.value matches 131072.. run scoreboard players operation #output dom.value += #cbrng_x_increment_17 dom.value
execute if score #cbrng_x dom.value matches 131072.. run scoreboard players remove #cbrng_x dom.value 131072

execute if score #cbrng_x dom.value matches 65536.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_16 dom.value
execute if score #cbrng_x dom.value matches 65536.. run scoreboard players operation #output dom.value += #cbrng_x_increment_16 dom.value
execute if score #cbrng_x dom.value matches 65536.. run scoreboard players remove #cbrng_x dom.value 65536

execute if score #cbrng_x dom.value matches 32768.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_15 dom.value
execute if score #cbrng_x dom.value matches 32768.. run scoreboard players operation #output dom.value += #cbrng_x_increment_15 dom.value
execute if score #cbrng_x dom.value matches 32768.. run scoreboard players remove #cbrng_x dom.value 32768

execute if score #cbrng_x dom.value matches 16384.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_14 dom.value
execute if score #cbrng_x dom.value matches 16384.. run scoreboard players operation #output dom.value += #cbrng_x_increment_14 dom.value
execute if score #cbrng_x dom.value matches 16384.. run scoreboard players remove #cbrng_x dom.value 16384

execute if score #cbrng_x dom.value matches 8192.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_13 dom.value
execute if score #cbrng_x dom.value matches 8192.. run scoreboard players operation #output dom.value += #cbrng_x_increment_13 dom.value
execute if score #cbrng_x dom.value matches 8192.. run scoreboard players remove #cbrng_x dom.value 8192

execute if score #cbrng_x dom.value matches 4096.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_12 dom.value
execute if score #cbrng_x dom.value matches 4096.. run scoreboard players operation #output dom.value += #cbrng_x_increment_12 dom.value
execute if score #cbrng_x dom.value matches 4096.. run scoreboard players remove #cbrng_x dom.value 4096

execute if score #cbrng_x dom.value matches 2048.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_11 dom.value
execute if score #cbrng_x dom.value matches 2048.. run scoreboard players operation #output dom.value += #cbrng_x_increment_11 dom.value
execute if score #cbrng_x dom.value matches 2048.. run scoreboard players remove #cbrng_x dom.value 2048

execute if score #cbrng_x dom.value matches 1024.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_10 dom.value
execute if score #cbrng_x dom.value matches 1024.. run scoreboard players operation #output dom.value += #cbrng_x_increment_10 dom.value
execute if score #cbrng_x dom.value matches 1024.. run scoreboard players remove #cbrng_x dom.value 1024

execute if score #cbrng_x dom.value matches 512.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_09 dom.value
execute if score #cbrng_x dom.value matches 512.. run scoreboard players operation #output dom.value += #cbrng_x_increment_09 dom.value
execute if score #cbrng_x dom.value matches 512.. run scoreboard players remove #cbrng_x dom.value 512

execute if score #cbrng_x dom.value matches 256.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_08 dom.value
execute if score #cbrng_x dom.value matches 256.. run scoreboard players operation #output dom.value += #cbrng_x_increment_08 dom.value
execute if score #cbrng_x dom.value matches 256.. run scoreboard players remove #cbrng_x dom.value 256

execute if score #cbrng_x dom.value matches 128.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_07 dom.value
execute if score #cbrng_x dom.value matches 128.. run scoreboard players operation #output dom.value += #cbrng_x_increment_07 dom.value
execute if score #cbrng_x dom.value matches 128.. run scoreboard players remove #cbrng_x dom.value 128

execute if score #cbrng_x dom.value matches 64.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_06 dom.value
execute if score #cbrng_x dom.value matches 64.. run scoreboard players operation #output dom.value += #cbrng_x_increment_06 dom.value
execute if score #cbrng_x dom.value matches 64.. run scoreboard players remove #cbrng_x dom.value 64

execute if score #cbrng_x dom.value matches 32.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_05 dom.value
execute if score #cbrng_x dom.value matches 32.. run scoreboard players operation #output dom.value += #cbrng_x_increment_05 dom.value
execute if score #cbrng_x dom.value matches 32.. run scoreboard players remove #cbrng_x dom.value 32

execute if score #cbrng_x dom.value matches 16.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_04 dom.value
execute if score #cbrng_x dom.value matches 16.. run scoreboard players operation #output dom.value += #cbrng_x_increment_04 dom.value
execute if score #cbrng_x dom.value matches 16.. run scoreboard players remove #cbrng_x dom.value 16

execute if score #cbrng_x dom.value matches 8.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_03 dom.value
execute if score #cbrng_x dom.value matches 8.. run scoreboard players operation #output dom.value += #cbrng_x_increment_03 dom.value
execute if score #cbrng_x dom.value matches 8.. run scoreboard players remove #cbrng_x dom.value 8

execute if score #cbrng_x dom.value matches 4.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_02 dom.value
execute if score #cbrng_x dom.value matches 4.. run scoreboard players operation #output dom.value += #cbrng_x_increment_02 dom.value
execute if score #cbrng_x dom.value matches 4.. run scoreboard players remove #cbrng_x dom.value 4

execute if score #cbrng_x dom.value matches 2.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_01 dom.value
execute if score #cbrng_x dom.value matches 2.. run scoreboard players operation #output dom.value += #cbrng_x_increment_01 dom.value
execute if score #cbrng_x dom.value matches 2.. run scoreboard players remove #cbrng_x dom.value 2

execute if score #cbrng_x dom.value matches 1.. run scoreboard players operation #output dom.value *= #cbrng_x_multiplier_00 dom.value
execute if score #cbrng_x dom.value matches 1.. run scoreboard players operation #output dom.value += #cbrng_x_increment_00 dom.value
execute if score #cbrng_x dom.value matches 1.. run scoreboard players remove #cbrng_x dom.value 1

scoreboard players operation #output_x dom.value = #output dom.value



scoreboard players operation #output dom.value = #cbrng_seed dom.value

execute if score #cbrng_y dom.value matches ..-1 run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_31 dom.value
execute if score #cbrng_y dom.value matches ..-1 run scoreboard players operation #output dom.value += #cbrng_y_increment_31 dom.value
execute store result score #cbrng_boolean dom.value if score #cbrng_y dom.value matches ..-1
execute if score #cbrng_boolean dom.value matches 1 run scoreboard players add #cbrng_y dom.value 2147483647
execute if score #cbrng_boolean dom.value matches 1 run scoreboard players add #cbrng_y dom.value 1

execute if score #cbrng_y dom.value matches 1073741824.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_30 dom.value
execute if score #cbrng_y dom.value matches 1073741824.. run scoreboard players operation #output dom.value += #cbrng_y_increment_30 dom.value
execute if score #cbrng_y dom.value matches 1073741824.. run scoreboard players remove #cbrng_y dom.value 1073741824

execute if score #cbrng_y dom.value matches 536870912.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_29 dom.value
execute if score #cbrng_y dom.value matches 536870912.. run scoreboard players operation #output dom.value += #cbrng_y_increment_29 dom.value
execute if score #cbrng_y dom.value matches 536870912.. run scoreboard players remove #cbrng_y dom.value 536870912

execute if score #cbrng_y dom.value matches 268435456.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_28 dom.value
execute if score #cbrng_y dom.value matches 268435456.. run scoreboard players operation #output dom.value += #cbrng_y_increment_28 dom.value
execute if score #cbrng_y dom.value matches 268435456.. run scoreboard players remove #cbrng_y dom.value 268435456

execute if score #cbrng_y dom.value matches 134217728.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_27 dom.value
execute if score #cbrng_y dom.value matches 134217728.. run scoreboard players operation #output dom.value += #cbrng_y_increment_27 dom.value
execute if score #cbrng_y dom.value matches 134217728.. run scoreboard players remove #cbrng_y dom.value 134217728

execute if score #cbrng_y dom.value matches 67108864.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_26 dom.value
execute if score #cbrng_y dom.value matches 67108864.. run scoreboard players operation #output dom.value += #cbrng_y_increment_26 dom.value
execute if score #cbrng_y dom.value matches 67108864.. run scoreboard players remove #cbrng_y dom.value 67108864

execute if score #cbrng_y dom.value matches 33554432.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_25 dom.value
execute if score #cbrng_y dom.value matches 33554432.. run scoreboard players operation #output dom.value += #cbrng_y_increment_25 dom.value
execute if score #cbrng_y dom.value matches 33554432.. run scoreboard players remove #cbrng_y dom.value 33554432

execute if score #cbrng_y dom.value matches 16777216.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_24 dom.value
execute if score #cbrng_y dom.value matches 16777216.. run scoreboard players operation #output dom.value += #cbrng_y_increment_24 dom.value
execute if score #cbrng_y dom.value matches 16777216.. run scoreboard players remove #cbrng_y dom.value 16777216

execute if score #cbrng_y dom.value matches 8388608.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_23 dom.value
execute if score #cbrng_y dom.value matches 8388608.. run scoreboard players operation #output dom.value += #cbrng_y_increment_23 dom.value
execute if score #cbrng_y dom.value matches 8388608.. run scoreboard players remove #cbrng_y dom.value 8388608

execute if score #cbrng_y dom.value matches 4194304.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_22 dom.value
execute if score #cbrng_y dom.value matches 4194304.. run scoreboard players operation #output dom.value += #cbrng_y_increment_22 dom.value
execute if score #cbrng_y dom.value matches 4194304.. run scoreboard players remove #cbrng_y dom.value 4194304

execute if score #cbrng_y dom.value matches 2097152.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_21 dom.value
execute if score #cbrng_y dom.value matches 2097152.. run scoreboard players operation #output dom.value += #cbrng_y_increment_21 dom.value
execute if score #cbrng_y dom.value matches 2097152.. run scoreboard players remove #cbrng_y dom.value 2097152

execute if score #cbrng_y dom.value matches 1048576.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_20 dom.value
execute if score #cbrng_y dom.value matches 1048576.. run scoreboard players operation #output dom.value += #cbrng_y_increment_20 dom.value
execute if score #cbrng_y dom.value matches 1048576.. run scoreboard players remove #cbrng_y dom.value 1048576

execute if score #cbrng_y dom.value matches 524288.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_19 dom.value
execute if score #cbrng_y dom.value matches 524288.. run scoreboard players operation #output dom.value += #cbrng_y_increment_19 dom.value
execute if score #cbrng_y dom.value matches 524288.. run scoreboard players remove #cbrng_y dom.value 524288

execute if score #cbrng_y dom.value matches 262144.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_18 dom.value
execute if score #cbrng_y dom.value matches 262144.. run scoreboard players operation #output dom.value += #cbrng_y_increment_18 dom.value
execute if score #cbrng_y dom.value matches 262144.. run scoreboard players remove #cbrng_y dom.value 262144

execute if score #cbrng_y dom.value matches 131072.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_17 dom.value
execute if score #cbrng_y dom.value matches 131072.. run scoreboard players operation #output dom.value += #cbrng_y_increment_17 dom.value
execute if score #cbrng_y dom.value matches 131072.. run scoreboard players remove #cbrng_y dom.value 131072

execute if score #cbrng_y dom.value matches 65536.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_16 dom.value
execute if score #cbrng_y dom.value matches 65536.. run scoreboard players operation #output dom.value += #cbrng_y_increment_16 dom.value
execute if score #cbrng_y dom.value matches 65536.. run scoreboard players remove #cbrng_y dom.value 65536

execute if score #cbrng_y dom.value matches 32768.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_15 dom.value
execute if score #cbrng_y dom.value matches 32768.. run scoreboard players operation #output dom.value += #cbrng_y_increment_15 dom.value
execute if score #cbrng_y dom.value matches 32768.. run scoreboard players remove #cbrng_y dom.value 32768

execute if score #cbrng_y dom.value matches 16384.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_14 dom.value
execute if score #cbrng_y dom.value matches 16384.. run scoreboard players operation #output dom.value += #cbrng_y_increment_14 dom.value
execute if score #cbrng_y dom.value matches 16384.. run scoreboard players remove #cbrng_y dom.value 16384

execute if score #cbrng_y dom.value matches 8192.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_13 dom.value
execute if score #cbrng_y dom.value matches 8192.. run scoreboard players operation #output dom.value += #cbrng_y_increment_13 dom.value
execute if score #cbrng_y dom.value matches 8192.. run scoreboard players remove #cbrng_y dom.value 8192

execute if score #cbrng_y dom.value matches 4096.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_12 dom.value
execute if score #cbrng_y dom.value matches 4096.. run scoreboard players operation #output dom.value += #cbrng_y_increment_12 dom.value
execute if score #cbrng_y dom.value matches 4096.. run scoreboard players remove #cbrng_y dom.value 4096

execute if score #cbrng_y dom.value matches 2048.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_11 dom.value
execute if score #cbrng_y dom.value matches 2048.. run scoreboard players operation #output dom.value += #cbrng_y_increment_11 dom.value
execute if score #cbrng_y dom.value matches 2048.. run scoreboard players remove #cbrng_y dom.value 2048

execute if score #cbrng_y dom.value matches 1024.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_10 dom.value
execute if score #cbrng_y dom.value matches 1024.. run scoreboard players operation #output dom.value += #cbrng_y_increment_10 dom.value
execute if score #cbrng_y dom.value matches 1024.. run scoreboard players remove #cbrng_y dom.value 1024

execute if score #cbrng_y dom.value matches 512.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_09 dom.value
execute if score #cbrng_y dom.value matches 512.. run scoreboard players operation #output dom.value += #cbrng_y_increment_09 dom.value
execute if score #cbrng_y dom.value matches 512.. run scoreboard players remove #cbrng_y dom.value 512

execute if score #cbrng_y dom.value matches 256.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_08 dom.value
execute if score #cbrng_y dom.value matches 256.. run scoreboard players operation #output dom.value += #cbrng_y_increment_08 dom.value
execute if score #cbrng_y dom.value matches 256.. run scoreboard players remove #cbrng_y dom.value 256

execute if score #cbrng_y dom.value matches 128.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_07 dom.value
execute if score #cbrng_y dom.value matches 128.. run scoreboard players operation #output dom.value += #cbrng_y_increment_07 dom.value
execute if score #cbrng_y dom.value matches 128.. run scoreboard players remove #cbrng_y dom.value 128

execute if score #cbrng_y dom.value matches 64.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_06 dom.value
execute if score #cbrng_y dom.value matches 64.. run scoreboard players operation #output dom.value += #cbrng_y_increment_06 dom.value
execute if score #cbrng_y dom.value matches 64.. run scoreboard players remove #cbrng_y dom.value 64

execute if score #cbrng_y dom.value matches 32.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_05 dom.value
execute if score #cbrng_y dom.value matches 32.. run scoreboard players operation #output dom.value += #cbrng_y_increment_05 dom.value
execute if score #cbrng_y dom.value matches 32.. run scoreboard players remove #cbrng_y dom.value 32

execute if score #cbrng_y dom.value matches 16.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_04 dom.value
execute if score #cbrng_y dom.value matches 16.. run scoreboard players operation #output dom.value += #cbrng_y_increment_04 dom.value
execute if score #cbrng_y dom.value matches 16.. run scoreboard players remove #cbrng_y dom.value 16

execute if score #cbrng_y dom.value matches 8.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_03 dom.value
execute if score #cbrng_y dom.value matches 8.. run scoreboard players operation #output dom.value += #cbrng_y_increment_03 dom.value
execute if score #cbrng_y dom.value matches 8.. run scoreboard players remove #cbrng_y dom.value 8

execute if score #cbrng_y dom.value matches 4.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_02 dom.value
execute if score #cbrng_y dom.value matches 4.. run scoreboard players operation #output dom.value += #cbrng_y_increment_02 dom.value
execute if score #cbrng_y dom.value matches 4.. run scoreboard players remove #cbrng_y dom.value 4

execute if score #cbrng_y dom.value matches 2.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_01 dom.value
execute if score #cbrng_y dom.value matches 2.. run scoreboard players operation #output dom.value += #cbrng_y_increment_01 dom.value
execute if score #cbrng_y dom.value matches 2.. run scoreboard players remove #cbrng_y dom.value 2

execute if score #cbrng_y dom.value matches 1.. run scoreboard players operation #output dom.value *= #cbrng_y_multiplier_00 dom.value
execute if score #cbrng_y dom.value matches 1.. run scoreboard players operation #output dom.value += #cbrng_y_increment_00 dom.value
execute if score #cbrng_y dom.value matches 1.. run scoreboard players remove #cbrng_y dom.value 1

scoreboard players operation #output_y dom.value = #output dom.value



scoreboard players operation #output dom.value = #cbrng_seed dom.value

execute if score #cbrng_z dom.value matches ..-1 run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_31 dom.value
execute if score #cbrng_z dom.value matches ..-1 run scoreboard players operation #output dom.value += #cbrng_z_increment_31 dom.value
execute store result score #cbrng_boolean dom.value if score #cbrng_z dom.value matches ..-1
execute if score #cbrng_boolean dom.value matches 1 run scoreboard players add #cbrng_z dom.value 2147483647
execute if score #cbrng_boolean dom.value matches 1 run scoreboard players add #cbrng_z dom.value 1

execute if score #cbrng_z dom.value matches 1073741824.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_30 dom.value
execute if score #cbrng_z dom.value matches 1073741824.. run scoreboard players operation #output dom.value += #cbrng_z_increment_30 dom.value
execute if score #cbrng_z dom.value matches 1073741824.. run scoreboard players remove #cbrng_z dom.value 1073741824

execute if score #cbrng_z dom.value matches 536870912.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_29 dom.value
execute if score #cbrng_z dom.value matches 536870912.. run scoreboard players operation #output dom.value += #cbrng_z_increment_29 dom.value
execute if score #cbrng_z dom.value matches 536870912.. run scoreboard players remove #cbrng_z dom.value 536870912

execute if score #cbrng_z dom.value matches 268435456.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_28 dom.value
execute if score #cbrng_z dom.value matches 268435456.. run scoreboard players operation #output dom.value += #cbrng_z_increment_28 dom.value
execute if score #cbrng_z dom.value matches 268435456.. run scoreboard players remove #cbrng_z dom.value 268435456

execute if score #cbrng_z dom.value matches 134217728.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_27 dom.value
execute if score #cbrng_z dom.value matches 134217728.. run scoreboard players operation #output dom.value += #cbrng_z_increment_27 dom.value
execute if score #cbrng_z dom.value matches 134217728.. run scoreboard players remove #cbrng_z dom.value 134217728

execute if score #cbrng_z dom.value matches 67108864.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_26 dom.value
execute if score #cbrng_z dom.value matches 67108864.. run scoreboard players operation #output dom.value += #cbrng_z_increment_26 dom.value
execute if score #cbrng_z dom.value matches 67108864.. run scoreboard players remove #cbrng_z dom.value 67108864

execute if score #cbrng_z dom.value matches 33554432.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_25 dom.value
execute if score #cbrng_z dom.value matches 33554432.. run scoreboard players operation #output dom.value += #cbrng_z_increment_25 dom.value
execute if score #cbrng_z dom.value matches 33554432.. run scoreboard players remove #cbrng_z dom.value 33554432

execute if score #cbrng_z dom.value matches 16777216.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_24 dom.value
execute if score #cbrng_z dom.value matches 16777216.. run scoreboard players operation #output dom.value += #cbrng_z_increment_24 dom.value
execute if score #cbrng_z dom.value matches 16777216.. run scoreboard players remove #cbrng_z dom.value 16777216

execute if score #cbrng_z dom.value matches 8388608.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_23 dom.value
execute if score #cbrng_z dom.value matches 8388608.. run scoreboard players operation #output dom.value += #cbrng_z_increment_23 dom.value
execute if score #cbrng_z dom.value matches 8388608.. run scoreboard players remove #cbrng_z dom.value 8388608

execute if score #cbrng_z dom.value matches 4194304.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_22 dom.value
execute if score #cbrng_z dom.value matches 4194304.. run scoreboard players operation #output dom.value += #cbrng_z_increment_22 dom.value
execute if score #cbrng_z dom.value matches 4194304.. run scoreboard players remove #cbrng_z dom.value 4194304

execute if score #cbrng_z dom.value matches 2097152.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_21 dom.value
execute if score #cbrng_z dom.value matches 2097152.. run scoreboard players operation #output dom.value += #cbrng_z_increment_21 dom.value
execute if score #cbrng_z dom.value matches 2097152.. run scoreboard players remove #cbrng_z dom.value 2097152

execute if score #cbrng_z dom.value matches 1048576.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_20 dom.value
execute if score #cbrng_z dom.value matches 1048576.. run scoreboard players operation #output dom.value += #cbrng_z_increment_20 dom.value
execute if score #cbrng_z dom.value matches 1048576.. run scoreboard players remove #cbrng_z dom.value 1048576

execute if score #cbrng_z dom.value matches 524288.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_19 dom.value
execute if score #cbrng_z dom.value matches 524288.. run scoreboard players operation #output dom.value += #cbrng_z_increment_19 dom.value
execute if score #cbrng_z dom.value matches 524288.. run scoreboard players remove #cbrng_z dom.value 524288

execute if score #cbrng_z dom.value matches 262144.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_18 dom.value
execute if score #cbrng_z dom.value matches 262144.. run scoreboard players operation #output dom.value += #cbrng_z_increment_18 dom.value
execute if score #cbrng_z dom.value matches 262144.. run scoreboard players remove #cbrng_z dom.value 262144

execute if score #cbrng_z dom.value matches 131072.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_17 dom.value
execute if score #cbrng_z dom.value matches 131072.. run scoreboard players operation #output dom.value += #cbrng_z_increment_17 dom.value
execute if score #cbrng_z dom.value matches 131072.. run scoreboard players remove #cbrng_z dom.value 131072

execute if score #cbrng_z dom.value matches 65536.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_16 dom.value
execute if score #cbrng_z dom.value matches 65536.. run scoreboard players operation #output dom.value += #cbrng_z_increment_16 dom.value
execute if score #cbrng_z dom.value matches 65536.. run scoreboard players remove #cbrng_z dom.value 65536

execute if score #cbrng_z dom.value matches 32768.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_15 dom.value
execute if score #cbrng_z dom.value matches 32768.. run scoreboard players operation #output dom.value += #cbrng_z_increment_15 dom.value
execute if score #cbrng_z dom.value matches 32768.. run scoreboard players remove #cbrng_z dom.value 32768

execute if score #cbrng_z dom.value matches 16384.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_14 dom.value
execute if score #cbrng_z dom.value matches 16384.. run scoreboard players operation #output dom.value += #cbrng_z_increment_14 dom.value
execute if score #cbrng_z dom.value matches 16384.. run scoreboard players remove #cbrng_z dom.value 16384

execute if score #cbrng_z dom.value matches 8192.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_13 dom.value
execute if score #cbrng_z dom.value matches 8192.. run scoreboard players operation #output dom.value += #cbrng_z_increment_13 dom.value
execute if score #cbrng_z dom.value matches 8192.. run scoreboard players remove #cbrng_z dom.value 8192

execute if score #cbrng_z dom.value matches 4096.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_12 dom.value
execute if score #cbrng_z dom.value matches 4096.. run scoreboard players operation #output dom.value += #cbrng_z_increment_12 dom.value
execute if score #cbrng_z dom.value matches 4096.. run scoreboard players remove #cbrng_z dom.value 4096

execute if score #cbrng_z dom.value matches 2048.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_11 dom.value
execute if score #cbrng_z dom.value matches 2048.. run scoreboard players operation #output dom.value += #cbrng_z_increment_11 dom.value
execute if score #cbrng_z dom.value matches 2048.. run scoreboard players remove #cbrng_z dom.value 2048

execute if score #cbrng_z dom.value matches 1024.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_10 dom.value
execute if score #cbrng_z dom.value matches 1024.. run scoreboard players operation #output dom.value += #cbrng_z_increment_10 dom.value
execute if score #cbrng_z dom.value matches 1024.. run scoreboard players remove #cbrng_z dom.value 1024

execute if score #cbrng_z dom.value matches 512.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_09 dom.value
execute if score #cbrng_z dom.value matches 512.. run scoreboard players operation #output dom.value += #cbrng_z_increment_09 dom.value
execute if score #cbrng_z dom.value matches 512.. run scoreboard players remove #cbrng_z dom.value 512

execute if score #cbrng_z dom.value matches 256.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_08 dom.value
execute if score #cbrng_z dom.value matches 256.. run scoreboard players operation #output dom.value += #cbrng_z_increment_08 dom.value
execute if score #cbrng_z dom.value matches 256.. run scoreboard players remove #cbrng_z dom.value 256

execute if score #cbrng_z dom.value matches 128.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_07 dom.value
execute if score #cbrng_z dom.value matches 128.. run scoreboard players operation #output dom.value += #cbrng_z_increment_07 dom.value
execute if score #cbrng_z dom.value matches 128.. run scoreboard players remove #cbrng_z dom.value 128

execute if score #cbrng_z dom.value matches 64.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_06 dom.value
execute if score #cbrng_z dom.value matches 64.. run scoreboard players operation #output dom.value += #cbrng_z_increment_06 dom.value
execute if score #cbrng_z dom.value matches 64.. run scoreboard players remove #cbrng_z dom.value 64

execute if score #cbrng_z dom.value matches 32.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_05 dom.value
execute if score #cbrng_z dom.value matches 32.. run scoreboard players operation #output dom.value += #cbrng_z_increment_05 dom.value
execute if score #cbrng_z dom.value matches 32.. run scoreboard players remove #cbrng_z dom.value 32

execute if score #cbrng_z dom.value matches 16.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_04 dom.value
execute if score #cbrng_z dom.value matches 16.. run scoreboard players operation #output dom.value += #cbrng_z_increment_04 dom.value
execute if score #cbrng_z dom.value matches 16.. run scoreboard players remove #cbrng_z dom.value 16

execute if score #cbrng_z dom.value matches 8.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_03 dom.value
execute if score #cbrng_z dom.value matches 8.. run scoreboard players operation #output dom.value += #cbrng_z_increment_03 dom.value
execute if score #cbrng_z dom.value matches 8.. run scoreboard players remove #cbrng_z dom.value 8

execute if score #cbrng_z dom.value matches 4.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_02 dom.value
execute if score #cbrng_z dom.value matches 4.. run scoreboard players operation #output dom.value += #cbrng_z_increment_02 dom.value
execute if score #cbrng_z dom.value matches 4.. run scoreboard players remove #cbrng_z dom.value 4

execute if score #cbrng_z dom.value matches 2.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_01 dom.value
execute if score #cbrng_z dom.value matches 2.. run scoreboard players operation #output dom.value += #cbrng_z_increment_01 dom.value
execute if score #cbrng_z dom.value matches 2.. run scoreboard players remove #cbrng_z dom.value 2

execute if score #cbrng_z dom.value matches 1.. run scoreboard players operation #output dom.value *= #cbrng_z_multiplier_00 dom.value
execute if score #cbrng_z dom.value matches 1.. run scoreboard players operation #output dom.value += #cbrng_z_increment_00 dom.value
execute if score #cbrng_z dom.value matches 1.. run scoreboard players remove #cbrng_z dom.value 1

scoreboard players operation #output_z dom.value = #output dom.value



scoreboard players operation #output dom.value = #output_x dom.value
scoreboard players operation #output dom.value *= #output_y dom.value
scoreboard players operation #output dom.value += #output_z dom.value

scoreboard players operation #rng_bit_swap dom.value = #output dom.value
scoreboard players operation #rng_bit_swap dom.value /= #65536 dom.value
scoreboard players operation #output dom.value *= #65536 dom.value
scoreboard players operation #output dom.value += #rng_bit_swap dom.value

scoreboard players operation #output dom.value *= #rng_multiplier dom.value
scoreboard players operation #output dom.value += #rng_increment dom.value







# Scale output

scoreboard players operation #output dom.value %= #input dom.value
execute if score #input dom.value matches 0 run scoreboard players set #output dom.value 0