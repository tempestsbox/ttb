#called by world/structure/large_wooden_snow_dungeon/room/corridor_connector/connect

data modify storage ttb:world structure.orientation[0].id set value "minecraft:east"
function ttb:world/structure/large_wooden_snow_dungeon/room/corridor_connector/prepare_structure_block
setblock ~ ~1 ~ redstone_block
