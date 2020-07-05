#called by world/structure/prepare_structure_block

execute store result score relative_width ttb_data run data get storage ttb:world structure.dungeon.room_result.relative_width .5

execute if data storage ttb:world structure{orientation:'north'} store result block ~ ~ ~ posX int -1 run scoreboard players get relative_width ttb_data
execute if data storage ttb:world structure{orientation:'east'} store result block ~ ~ ~ posZ int -1 run scoreboard players get relative_width ttb_data
execute if data storage ttb:world structure{orientation:'south'} store result block ~ ~ ~ posX int 1 run scoreboard players get relative_width ttb_data
execute if data storage ttb:world structure{orientation:'west'} store result block ~ ~ ~ posZ int 1 run scoreboard players get relative_width ttb_data
