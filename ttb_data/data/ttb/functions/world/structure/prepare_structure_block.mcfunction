setblock ~ ~ ~ structure_block{ignoreEntities:1b,showboundingbox:1b,posY:0,rotation:"NONE",mode:"LOAD"}
execute if data storage ttb:temp world.structure.dungeon run function ttb:world/structure/process_dungeon_room_result
