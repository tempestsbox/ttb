#called by world/structure/function/dungeon/room_check

#pre
execute in overworld run forceload add ~ ~

#run checks
setblock ~ ~ ~ yellow_shulker_box

execute if entity @s[tag=ttb_structure_large_wooden_snow_dungeon_room] run function ttb:world/structure/large_wooden_snow_dungeon/room/fill_table

data modify block ~ ~ ~ LootTable set from storage structure.room.id
function ttb:util/generate_loot_table_seed

loot replace block ~ ~ ~ container.0 mine ~ ~ ~ air{drop_contents:1b}
data modify storage ttb:world structure.dungeon.room_check_result[0].id set from block ~ ~ ~ Items[0].tag.ttb.world.structure_id

tellraw @a[tag=ttb_debug] {"nbt":"structure","storage":"ttb:world"}

#post
setblock ~ ~ ~ air
execute in overworld run forceload remove ~ ~
kill @s
