#called by world/structure/large_wooden_snow_dungeon/room/basement_root/connect

function ttb:world/structure/function/prepare_structure_block
data modify block ~ ~ ~ name set value "ttb:large_wooden_snow_dungeon/basement_root"
setblock ~ ~1 ~ redstone_block
