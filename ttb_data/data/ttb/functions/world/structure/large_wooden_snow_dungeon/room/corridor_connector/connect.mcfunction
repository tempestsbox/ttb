execute if block ~ ~ ~ command_block[facing=north] positioned ~ ~-1 ~-1 run function ttb:world/structure/large_wooden_snow_dungeon/room/corridor_connector/create_north
execute if block ~ ~ ~ command_block[facing=east] positioned ~1 ~-1 ~ run function ttb:world/structure/large_wooden_snow_dungeon/room/corridor_connector/create_east
execute if block ~ ~ ~ command_block[facing=south] positioned ~ ~-1 ~1 run function ttb:world/structure/large_wooden_snow_dungeon/room/corridor_connector/create_south
execute if block ~ ~ ~ command_block[facing=west] positioned ~-1 ~-1 ~ run function ttb:world/structure/large_wooden_snow_dungeon/room/corridor_connector/create_west

fill ~ ~ ~ ~ ~1 ~ air replace #ttb:structure_artifacts
