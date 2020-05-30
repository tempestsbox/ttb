execute if block ~ ~ ~ command_block[facing=north] positioned ~ ~-1 ~-1 unless block ~ ~ ~-7 #ttb:air run function ttb:world/structure/large_wooden_snow_dungeon/room/connector/corridor/create_north
execute if block ~ ~ ~ command_block[facing=east] positioned ~1 ~-1 ~ unless block ~7 ~ ~ #ttb:air run function ttb:world/structure/large_wooden_snow_dungeon/room/connector/corridor/create_east
execute if block ~ ~ ~ command_block[facing=south] positioned ~ ~-1 ~1 unless block ~ ~ ~7 #ttb:air run function ttb:world/structure/large_wooden_snow_dungeon/room/connector/corridor/create_south
execute if block ~ ~ ~ command_block[facing=west] positioned ~-1 ~-1 ~ unless block ~-7 ~ ~ #ttb:air run function ttb:world/structure/large_wooden_snow_dungeon/room/connector/corridor/create_west

fill ~ ~ ~ ~ ~1 ~ air replace #ttb:structure_artifact
