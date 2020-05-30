# called by world/structure/loop_spawns

data modify storage ttb:temp check_string set value []
data modify storage ttb:temp check_string append from storage ttb:world structure.spawns[0]

execute if data storage ttb:temp check_string[{id:'large_wooden_snow_dungeon'}] positioned ~ ~-16 ~ run function ttb:world/structure/large_wooden_snow_dungeon/create

data remove storage ttb:temp check_string
