# Create scoreboard objectives

scoreboard objectives add dom.value dummy
scoreboard objectives add dom.id dummy
scoreboard objectives add dom.timer dummy
scoreboard objectives add dom.dimension dummy

scoreboard objectives add dom.x dummy
scoreboard objectives add dom.y dummy
scoreboard objectives add dom.z dummy

scoreboard objectives add dom.motion_x dummy
scoreboard objectives add dom.motion_y dummy
scoreboard objectives add dom.motion_z dummy

scoreboard objectives add dom.yaw dummy
scoreboard objectives add dom.pitch dummy

scoreboard objectives add dom.motion_yaw dummy
scoreboard objectives add dom.motion_pitch dummy

scoreboard objectives add dom.redstone minecraft.used:minecraft.redstone
scoreboard objectives add dom.repeater minecraft.used:minecraft.repeater
scoreboard objectives add dom.comparator minecraft.used:minecraft.comparator
scoreboard objectives add dom.red_torch minecraft.used:minecraft.redstone_torch
scoreboard objectives add dom.red_block minecraft.used:minecraft.redstone_block
scoreboard objectives add dom.piston minecraft.used:minecraft.piston
scoreboard objectives add dom.stick_piston minecraft.used:minecraft.sticky_piston
scoreboard objectives add dom.hopper minecraft.used:minecraft.hopper
scoreboard objectives add dom.dispenser minecraft.used:minecraft.dispenser
scoreboard objectives add dom.dropper minecraft.used:minecraft.dropper
scoreboard objectives add dom.observer minecraft.used:minecraft.observer
scoreboard objectives add dom.daylight minecraft.used:minecraft.daylight_detector
scoreboard objectives add dom.note_block minecraft.used:minecraft.note_block
scoreboard objectives add dom.red_lamp minecraft.used:minecraft.redstone_lamp
scoreboard objectives add dom.tripwire minecraft.used:minecraft.tripwire_hook
scoreboard objectives add dom.lever minecraft.used:minecraft.lever
scoreboard objectives add dom.target minecraft.used:minecraft.target
scoreboard objectives add dom.door minecraft.used:minecraft.iron_door
scoreboard objectives add dom.trapdoor minecraft.used:minecraft.iron_trapdoor
scoreboard objectives add dom.cmd minecraft.used:minecraft.command_block
scoreboard objectives add dom.cmd_chain minecraft.used:minecraft.chain_command_block
scoreboard objectives add dom.cmd_repeat minecraft.used:minecraft.repeating_command_block







# Set constants

scoreboard players set #1 dom.value 1
scoreboard players set #10 dom.value 10
scoreboard players set #100 dom.value 100
scoreboard players set #1000 dom.value 1000
scoreboard players set #10000 dom.value 10000
scoreboard players set #100000 dom.value 100000
scoreboard players set #1000000 dom.value 1000000
scoreboard players set #10000000 dom.value 10000000
scoreboard players set #100000000 dom.value 100000000
scoreboard players set #1000000000 dom.value 1000000000

scoreboard players set #2 dom.value 2
scoreboard players set #4 dom.value 4
scoreboard players set #8 dom.value 8
scoreboard players set #16 dom.value 16
scoreboard players set #32 dom.value 32
scoreboard players set #64 dom.value 64
scoreboard players set #128 dom.value 128
scoreboard players set #256 dom.value 256
scoreboard players set #512 dom.value 512
scoreboard players set #1024 dom.value 1024
scoreboard players set #2048 dom.value 2048
scoreboard players set #4096 dom.value 4096
scoreboard players set #8192 dom.value 8192
scoreboard players set #16384 dom.value 16384
scoreboard players set #32768 dom.value 32768
scoreboard players set #65536 dom.value 65536
scoreboard players set #131072 dom.value 131072
scoreboard players set #262144 dom.value 262144
scoreboard players set #524288 dom.value 524288
scoreboard players set #1048576 dom.value 1048576

scoreboard players set #-1 dom.value -1
scoreboard players set #3 dom.value 3
scoreboard players set #5 dom.value 5
scoreboard players set #6 dom.value 6
scoreboard players set #9 dom.value 9
scoreboard players set #15 dom.value 15
scoreboard players set #20 dom.value 20
scoreboard players set #25 dom.value 25
scoreboard players set #900 dom.value 900
scoreboard players set #1570 dom.value 1570
scoreboard players set #3600 dom.value 3600
scoreboard players set #5040 dom.value 5040

scoreboard players set #rng_multiplier dom.value 1664525
scoreboard players set #rng_increment dom.value 1013904223
execute unless score #rng dom.value = #rng dom.value store result score #rng dom.value run seed

execute unless score #cbrng_seed dom.value = #cbrng_seed dom.value run function dominexis:generic/cbrng/initialize







# Prepare object generation

scoreboard players add #object_phase dom.value 0







# Set gamerules and other global things

gamerule maxCommandChainLength 1048576
gamerule commandBlockOutput false

worldborder damage buffer 2000