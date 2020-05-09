#called by world/structure/function/check_spawn

function ttb:world/structure/prepare_structure_block
data modify block ~ ~ ~ name set value "ttb:large_wooden_snow_dungeon/lookout"
setblock ~ ~1 ~ redstone_block

execute positioned ~8 ~ ~7 positioned ~-3 ~-7 ~-3 run function ttb:world/structure/large_wooden_snow_dungeon/room/basement_root/create
