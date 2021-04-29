# Place tree if at surface

execute if block ~ ~-1 ~ #dominexis:tree_placeable run function dominexis:object/chunk/tollbooth/point/object/tree/place







# Execute recursive function

execute positioned ~ ~-1 ~ if block ~ ~ ~ #dominexis:surface_ignore run function dominexis:object/chunk/tollbooth/point/object/tree/surface