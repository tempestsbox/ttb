data modify storage ttb:world structure.room.type.id set value "ttb:world/structure/large_wooden_snow_dungeon/function/room/connector/corridor_initial"
function ttb:world/structure/dungeon/get_room

function ttb:world/structure/prepare_structure_block
data modify block ~ ~ ~ name set from storage ttb:world structure.dungeon.get_room_result[0].id
