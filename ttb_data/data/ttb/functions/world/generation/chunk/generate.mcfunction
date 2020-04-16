#called by entity/area_effect_cloud/tick

#get the biome type
scoreboard players reset * ttb_biome
execute positioned ~8 -1000 ~8 run function ttb:world/generation/chunk/scan

#try to spawn a structure before any chunk modifications have been done
execute if block ~ ~2 ~ bedrock run function ttb:world/generation/chunk/structure_check

#mark the chunk as generated
fill ~ 0 ~ ~15 0 ~15 barrier replace bedrock

#spread outwards
execute store result score active_chunks ttb_data if entity @e[type=area_effect_cloud,tag=ttb_chunk]
execute if score active_chunks ttb_data < active_chunks_max ttb_data run function ttb:world/generation/chunk/spread

kill @s[type=!player]
