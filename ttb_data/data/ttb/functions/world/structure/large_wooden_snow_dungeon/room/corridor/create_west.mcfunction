#called by world/structure/large_wooden_snow_dungeon/room/corridor/connect

data modify storage ttb:world structure.orientation[0].id set value "minecraft:west"
function ttb:world/structure/large_wooden_snow_dungeon/room/corridor/prepare_structure_block
data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"
setblock ~ ~1 ~ redstone_block
