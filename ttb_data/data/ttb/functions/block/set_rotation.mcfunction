#called by block/create_block

#store inverted player-rotation into entity
execute store result entity @s Rotation[0] float 1 run scoreboard players get custom_block_rotation ttb_data

#update on client
tp @s ~ ~ ~
