setblock ~ ~ ~ structure_block{ignoreEntities:1b,showboundingbox:1b,posY:0,rotation:"NONE",mode:"LOAD"}

execute if data storage ttb:world structure.dungeon.get_room_result[0].relative_width run function ttb:world/structure/relative_width

execute if data storage ttb:world structure.dungeon.get_room_result[0].shift_y store result block ~ ~ ~ posY int 1 run data get storage ttb:world structure.dungeon.get_room_result[0].shift_y

data modify storage ttb:world structure.orientation set value [{id:""}]
data remove storage ttb:world structure.dungeon.get_room_result[0].shift_y
data remove storage ttb:world structure.dungeon.get_room_result[0].relative_width
