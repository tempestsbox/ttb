# called by world/structure/dungeon/get_room

# pre
forceload add ~ ~

# run checks
setblock ~ ~ ~ yellow_shulker_box

data modify block ~ ~ ~ LootTable set from storage ttb:temp world.structure.room.type.id
execute at @s run function ttb:util/generate_loot_table_seed
execute store result block ~ ~ ~ LootTableSeed long 1 run scoreboard players get #seed_pos_x ttb_data

loot replace block ~ ~ ~ container.0 mine ~ ~ ~ air{drop_contents:1b}
data modify storage ttb:temp world.structure.dungeon.room_result set from block ~ ~ ~ Items[0].tag.ttb.world.structure

# post
setblock ~ ~ ~ air
forceload remove ~ ~
kill @s[type=area_effect_cloud]
