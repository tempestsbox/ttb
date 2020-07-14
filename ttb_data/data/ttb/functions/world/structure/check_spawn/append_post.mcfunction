# called by world/structure/check_spawn/append

# pre
forceload add ~ ~

# run checks
setblock ~ ~ ~ yellow_shulker_box

data modify block ~ ~ ~ LootTable set from storage ttb:temp structure_spawn_table
function ttb:util/generate_loot_table_seed_post

loot replace block ~ ~ ~ container.0 mine ~ ~ ~ air{drop_contents:1b}

data modify block ~ ~ ~ Items[0].tag.ttb.world.structure.integrity set from block ~ ~ ~ Items[0].tag.AttributeModifiers[{Name:"ttb:integrity"}].Amount
data modify block ~ ~ ~ Items[0].tag.ttb.world.structure.height set from block ~ ~ ~ Items[0].tag.AttributeModifiers[{Name:"ttb:height"}].Amount
data modify storage ttb:temp world.structure.spawns append from block ~ ~ ~ Items[0].tag.ttb.world.structure

# post
setblock ~ ~ ~ air
forceload remove ~ ~
kill @s
