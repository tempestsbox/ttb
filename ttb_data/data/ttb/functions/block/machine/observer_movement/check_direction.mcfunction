# called by block/machine/clock2s

particle block quartz_block ~ ~ ~ .25 .25 .25 0 50 normal @a
playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 1 1

execute if block ~ ~1 ~ observer[facing=up] if block ~ ~-1 ~ #ttb:replace_on_creation run function ttb:block/machine/observer_movement/move_up
execute if block ~ ~1 ~ observer[facing=down] if block ~ ~2 ~ #ttb:replace_on_creation run function ttb:block/machine/observer_movement/move_down

execute if block ~ ~1 ~ observer[facing=north] if block ~ ~ ~1 #ttb:replace_on_creation run function ttb:block/machine/observer_movement/move_north
execute if block ~ ~1 ~ observer[facing=east] if block ~-1 ~ ~ #ttb:replace_on_creation run function ttb:block/machine/observer_movement/move_east
execute if block ~ ~1 ~ observer[facing=west] if block ~1 ~ ~ #ttb:replace_on_creation run function ttb:block/machine/observer_movement/move_west
execute if block ~ ~1 ~ observer[facing=south] if block ~ ~ ~-1 #ttb:replace_on_creation run function ttb:block/machine/observer_movement/move_south
