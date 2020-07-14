# called by world/generation/chunk/generate

#pre
execute in overworld run forceload add ~ ~
data modify storage ttb:temp world.structure.spawns set value []

#run checks
execute if score snowy ttb_biome matches 1 run function ttb:world/structure/check_spawn/snowy
execute if score cold ttb_biome matches 1 run function ttb:world/structure/check_spawn/cold
# execute if score lush ttb_biome matches 1 run function ttb:world/structure/check_spawn/lush
# execute if score warm ttb_biome matches 1 run function ttb:world/structure/check_spawn/warm
# execute if score ocean ttb_biome matches 1 run function ttb:world/structure/check_spawn/ocean
# execute if score desert ttb_biome matches 1 run function ttb:world/structure/check_spawn/desert
# execute if score badlands ttb_biome matches 1 run function ttb:world/structure/check_spawn/badlands
# execute if score forest ttb_biome matches 1 run function ttb:world/structure/check_spawn/forest
# execute if score plains ttb_biome matches 1 run function ttb:world/structure/check_spawn/plains
# execute if score river ttb_biome matches 1 run function ttb:world/structure/check_spawn/river
# execute if score beach ttb_biome matches 1 run function ttb:world/structure/check_spawn/beach
# execute if score border ttb_biome matches 1 run function ttb:world/structure/check_spawn/border
function ttb:world/structure/check_spawn/ore

execute if data storage ttb:temp world.structure.spawns[0] at @s run function ttb:world/structure/spawn

#post
setblock ~ ~ ~ air
execute in overworld run forceload remove ~ ~
