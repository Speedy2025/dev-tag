# Place house if at surface

execute unless block ~ ~-1 ~ #dominexis:surface_ignore unless block ~ ~-1 ~ lava unless block ~ ~-1 ~ water run function dominexis:object/chunk/overworld/point/object/mushroom_house/place







# Execute recursive function

execute positioned ~ ~-1 ~ if block ~ ~ ~ #dominexis:surface_ignore run function dominexis:object/chunk/overworld/point/object/mushroom_house/surface