#called by world/structure/large_wooden_snow_dungeon/room/connector/decorator/connect

execute positioned ~1 ~ ~ run function ttb:world/structure/large_wooden_snow_dungeon/room/connector/decorator/box_west

data modify storage ttb:world structure.orientation[0].id set value "minecraft:west"
function ttb:world/structure/large_wooden_snow_dungeon/room/connector/decorator/prepare_structure_block
function ttb:world/structure/function/activate_structure_block

setblock ~ ~ ~ spruce_planks
