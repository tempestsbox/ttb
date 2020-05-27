#called by world/structure/function/check_structure

function ttb:world/structure/function/prepare_structure_block
data modify block ~ ~ ~ name set value "ttb:large_wooden_snow_dungeon/lookout"
setblock ~ ~1 ~ redstone_block

execute positioned ~5 ~-7 ~4 run function ttb:world/structure/large_wooden_snow_dungeon/room/basement_root/create
