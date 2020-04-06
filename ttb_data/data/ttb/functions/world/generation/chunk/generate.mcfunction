#called by entity/area_effect_cloud/tick

#get the biome type
scoreboard players reset * ttb_biome
execute positioned ~8 -1000 ~8 run function ttb:world/generation/chunk/scan

#try to spawn a structure before any chunk modifications have been done
execute if block ~ ~2 ~ bedrock run function ttb:world/generation/chunk/structure_check

#mark the chunk as generated
fill ~ 0 ~ ~15 0 ~15 barrier replace bedrock
tag @s remove ttb_chunk_generate

#spread outwards
execute positioned ~16 0 ~ if block ~ ~ ~ bedrock unless entity @e[type=area_effect_cloud,tag=ttb_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_chunk","ttb_chunk_generate"],CustomName:'"ttb_chunk"',Duration:3}
execute positioned ~-16 0 ~ if block ~ ~ ~ bedrock unless entity @e[type=area_effect_cloud,tag=ttb_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_chunk","ttb_chunk_generate"],CustomName:'"ttb_chunk"',Duration:3}
execute positioned ~ 0 ~16 if block ~ ~ ~ bedrock unless entity @e[type=area_effect_cloud,tag=ttb_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_chunk","ttb_chunk_generate"],CustomName:'"ttb_chunk"',Duration:3}
execute positioned ~ 0 ~-16 if block ~ ~ ~ bedrock unless entity @e[type=area_effect_cloud,tag=ttb_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_chunk","ttb_chunk_generate"],CustomName:'"ttb_chunk"',Duration:3}

#warn
execute store result score $active_chunks ttb_data if entity @e[type=area_effect_cloud,tag=ttb_chunk]
title @a actionbar [[{"text":"[","color":"black"},{"translate":"pack.ttb.name","color":"dark_gray"},{"text":"] ","color":"black"}],[{"translate":"text.ttb.world_generation.warn","color":"dark_gray"}],[" (",{"score":{"name":"$active_chunks","objective":"ttb_data"}},")"]]
