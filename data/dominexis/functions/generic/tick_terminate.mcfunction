# Terminate tick if at end of tick

execute store result score #worldborder_diameter dom.value run worldborder get
execute if score #worldborder_diameter dom.value matches 59999030.. run scoreboard players set #tick_terminate dom.value 1