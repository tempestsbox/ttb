#called by world/structure/prepare_structure_block

execute if data storage ttb:temp world.structure.dungeon.room_result.relative_width run function ttb:world/structure/relative_width

execute if data storage ttb:temp world.structure.dungeon.room_result.shift_y store result block ~ ~ ~ posY int 1 run data get storage ttb:temp world.structure.dungeon.room_result.shift_y

data remove storage ttb:temp world.structure.dungeon.room_result.shift_y
data remove storage ttb:temp world.structure.dungeon.room_result.relative_width
