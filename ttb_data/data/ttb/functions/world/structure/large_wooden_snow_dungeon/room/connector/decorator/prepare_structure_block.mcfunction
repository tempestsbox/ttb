data modify storage ttb:temp world.structure.room.type.id set value "ttb:world/structure/large_wooden_snow_dungeon/function/room/connector/decorator"
function ttb:world/structure/dungeon/get_room

function ttb:world/structure/prepare_structure_block
data modify block ~ ~ ~ name set from storage ttb:temp world.structure.dungeon.room_result.id
# tellraw @a {"nbt":"structure.dungeon.room_result.id","storage": "ttb:world"}
