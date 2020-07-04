#called by world/generation/player

execute if score worldGenerationWarnMessage ttb_gamerules matches 1 run title @a actionbar {"translate":"text.ttb.prefix","color":"#94EE82","with":[{"translate":"text.ttb.world_generation.warn","color":"#81D964"}]}

# get the biome type
scoreboard players reset * ttb_biome
execute positioned ~8 0 ~8 run function ttb:world/generation/chunk/scan
# scan other parts of the chunk if a river has been detected
execute if score border ttb_biome matches 1 run function ttb:world/generation/chunk/border

# try to spawn a structure before any chunk modifications have been done
execute if block ~ 4 ~ bedrock positioned 29999984 253 29999984 run function ttb:world/structure/chunk
# biome-based caves
function ttb:world/structure/cave/check_biome

# mark the chunk as generated
scoreboard players add chunk_count ttb_data 1
fill ~ 0 ~ ~15 0 ~15 barrier replace bedrock
execute if block ~ 0 ~ barrier run scoreboard players add loaded_chunks ttb_data 1
tag @s add ttb_chunk_generated

# spread outwards
execute positioned ~16 ~ ~ unless entity @e[type=area_effect_cloud,tag=ttb_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_chunk"],CustomName:'"ttb_chunk"',Duration:2000000000}
execute positioned ~-16 ~ ~ unless entity @e[type=area_effect_cloud,tag=ttb_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_chunk"],CustomName:'"ttb_chunk"',Duration:2000000000}
execute positioned ~ ~ ~16 unless entity @e[type=area_effect_cloud,tag=ttb_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_chunk"],CustomName:'"ttb_chunk"',Duration:2000000000}
execute positioned ~ ~ ~-16 unless entity @e[type=area_effect_cloud,tag=ttb_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_chunk"],CustomName:'"ttb_chunk"',Duration:2000000000}
