# Place spire if at surface

execute unless block ~ ~-1 ~ #dominexis:surface_ignore unless block ~ ~-1 ~ lava if blocks ~ ~36 ~ ~ ~36 ~ ~ ~36 ~ all run function dominexis:object/chunk/tollbooth/point/object/spire/place







# Execute recursive function

execute positioned ~ ~-1 ~ if block ~ ~ ~ #dominexis:surface_ignore run function dominexis:object/chunk/tollbooth/point/object/spire/surface