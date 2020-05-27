#called by world/structure/function/check_spawn

#pre
execute in overworld run forceload add ~ ~

#run checks
setblock ~ ~ ~ yellow_shulker_box
data modify block ~ ~ ~ LootTable set value 'ttb:world/structure/check_spawn'
function ttb:util/generate_loot_table_seed
loot replace block ~ ~ ~ container.0 mine ~ ~ ~ air{drop_contents:1b}
execute if data block ~ ~ ~ Items[{tag:{ttb:{world:{structure:{}}}}}] at @s run function ttb:world/structure/function/check_spawn/get_biome

setblock ~ ~ ~ air

setblock ~ ~ ~ yellow_shulker_box
execute if score snowy ttb_biome matches 1 run data modify block ~ ~ ~ LootTable set value 'ttb:world/structure/check_spawn/snowy'
scoreboard players reset * ttb_biome
function ttb:util/generate_loot_table_seed

loot replace block ~ ~ ~ container.0 mine ~ ~ ~ air{drop_contents:1b}
data modify storage ttb:world structure.get_spawn_result set value [{}]
data modify storage ttb:world structure.get_spawn_result[0] set from block ~ ~ ~ Items[0].tag.ttb.world.structure

#post
setblock ~ ~ ~ air
execute in overworld run forceload remove ~ ~
kill @s[type=area_effect_cloud]
