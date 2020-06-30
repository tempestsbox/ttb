#called by world/structure/large_wooden_snow_dungeon/room/connector/decorator/connect

execute positioned ~-1 ~ ~ run function ttb:world/structure/large_wooden_snow_dungeon/room/connector/decorator/box_east

data modify storage ttb:world structure.orientation set value 'east'
function ttb:world/structure/large_wooden_snow_dungeon/room/connector/decorator/prepare_structure_block
function ttb:world/structure/activate_structure_block

setblock ~ ~ ~ spruce_planks
