# called by world/generation/chunk/generate

#pre
execute in overworld run forceload add ~ ~
data modify storage ttb:world structure.spawns set value []

#run checks
execute if score snowy ttb_biome matches 1 run function ttb:world/structure/check/snowy
execute if score cold ttb_biome matches 1 run function ttb:world/structure/check/cold
execute if score lush ttb_biome matches 1 run function ttb:world/structure/check/lush
execute if score warm ttb_biome matches 1 run function ttb:world/structure/check/warm
execute if score ocean ttb_biome matches 1 run function ttb:world/structure/check/ocean
execute if score desert ttb_biome matches 1 run function ttb:world/structure/check/desert
execute if score badlands ttb_biome matches 1 run function ttb:world/structure/check/badlands
execute if score forest ttb_biome matches 1 run function ttb:world/structure/check/forest
execute if score plains ttb_biome matches 1 run function ttb:world/structure/check/plains
execute if score river ttb_biome matches 1 run function ttb:world/structure/check/river
execute if score beach ttb_biome matches 1 run function ttb:world/structure/check/beach
execute if score border ttb_biome matches 1 run function ttb:world/structure/check/border
function ttb:world/structure/check/ore

execute if data storage ttb:world structure.spawns[0] at @s run function ttb:world/structure/spawn

#post
setblock ~ ~ ~ air
execute in overworld run forceload remove ~ ~
