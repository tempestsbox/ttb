# called by block/machine/observer_movement/check_direction

tp @s ~ ~ ~1
clone ~ ~ ~ ~ ~ ~ ~ ~ ~1 replace move
execute positioned ~ ~1 ~ if block ~ ~ ~1 #ttb:replace_on_creation run clone ~ ~ ~ ~ ~ ~ ~ ~ ~1 replace move
