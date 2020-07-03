# called by block/[machine]/triggered

execute if block ~ ~1 ~ observer unless block ~ ~2 ~ quartz_block run function ttb:block/machine/observer_movement/check_direction
