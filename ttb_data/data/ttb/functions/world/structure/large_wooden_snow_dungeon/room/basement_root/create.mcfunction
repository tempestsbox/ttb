#called by world/structure/large_wooden_snow_dungeon/create

function ttb:world/structure/prepare_structure_block
data modify block ~ ~ ~ name set value "ttb:large_wooden_snow_dungeon/basement_root"
setblock ~ ~1 ~ redstone_block
