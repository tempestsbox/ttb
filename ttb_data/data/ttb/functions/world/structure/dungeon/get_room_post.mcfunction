#called by world/structure/dungeon/get_room

#pre
execute in overworld run forceload add ~ ~

#run checks
setblock ~ ~ ~ yellow_shulker_box

function ttb:util/generate_loot_table_seed
data modify block ~ ~ ~ LootTable set from storage ttb:temp world.structure.room.type.id

loot replace block ~ ~ ~ container.0 mine ~ ~ ~ air{drop_contents:1b}
data modify storage ttb:temp world.structure.dungeon.room_result set from block ~ ~ ~ Items[0].tag.ttb.world.structure

#post
setblock ~ ~ ~ air
execute in overworld run forceload remove ~ ~
kill @s[type=area_effect_cloud]
