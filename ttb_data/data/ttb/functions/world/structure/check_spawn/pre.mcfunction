# called by world/structure/check_spawn/...

setblock ~ ~ ~ yellow_shulker_box
execute at @s run function ttb:util/generate_loot_table_seed
