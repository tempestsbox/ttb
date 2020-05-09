execute if block ~ ~ ~ command_block[facing=north] positioned ~ ~-1 ~ positioned ~-2 ~ ~-1 run function ttb:world/structure/large_wooden_snow_dungeon/room/corridor/create_north
execute if block ~ ~ ~ command_block[facing=east] positioned ~ ~-1 ~ positioned ~1 ~ ~-2 run function ttb:world/structure/large_wooden_snow_dungeon/room/corridor/create_east
execute if block ~ ~ ~ command_block[facing=south] positioned ~ ~-1 ~ positioned ~2 ~ ~1 run function ttb:world/structure/large_wooden_snow_dungeon/room/corridor/create_south
execute if block ~ ~ ~ command_block[facing=west] positioned ~ ~-1 ~ positioned ~-1 ~ ~2 run function ttb:world/structure/large_wooden_snow_dungeon/room/corridor/create_west

setblock ~ ~ ~ air
