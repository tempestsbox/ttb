# called by world/structure/loop_spawns

data modify storage ttb:temp check.compound set from storage ttb:temp world.structure.spawns[0]

execute if data storage ttb:temp check.compound{id:'large_wooden_snow_dungeon'} positioned ~ ~-16 ~ run function ttb:world/structure/large_wooden_snow_dungeon/create

data remove storage ttb:temp check.compound
