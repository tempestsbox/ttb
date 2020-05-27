#called by world/structure/function/prepare_structure_block

execute if data storage ttb:world structure.dungeon.get_room_result[0].relative_width run function ttb:world/structure/function/relative_width

execute if data storage ttb:world structure.dungeon.get_room_result[0].shift_y store result block ~ ~ ~ posY int 1 run data get storage ttb:world structure.dungeon.get_room_result[0].shift_y

data remove storage ttb:world structure.dungeon.get_room_result[0].shift_y
data remove storage ttb:world structure.dungeon.get_room_result[0].relative_width
