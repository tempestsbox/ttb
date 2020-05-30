#called by world/structure/prepare_structure_block

execute store result score relative_width ttb_data run data get storage ttb:world structure.dungeon.get_room_result[0].relative_width .5

execute if data storage ttb:world structure.orientation[{id:"minecraft:north"}] store result block ~ ~ ~ posX int -1 run scoreboard players get relative_width ttb_data
execute if data storage ttb:world structure.orientation[{id:"minecraft:east"}] store result block ~ ~ ~ posZ int -1 run scoreboard players get relative_width ttb_data
execute if data storage ttb:world structure.orientation[{id:"minecraft:south"}] store result block ~ ~ ~ posX int 1 run scoreboard players get relative_width ttb_data
execute if data storage ttb:world structure.orientation[{id:"minecraft:west"}] store result block ~ ~ ~ posZ int 1 run scoreboard players get relative_width ttb_data
