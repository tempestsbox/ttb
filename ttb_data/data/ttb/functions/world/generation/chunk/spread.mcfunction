#called by world/generation/chunk/generate

execute positioned ~16 0 ~ if block ~ ~ ~ bedrock unless entity @e[type=area_effect_cloud,tag=ttb_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_entity","ttb_chunk","ttb_chunk_generate"],CustomName:'"ttb_chunk"',Duration:3}
execute positioned ~-16 0 ~ if block ~ ~ ~ bedrock unless entity @e[type=area_effect_cloud,tag=ttb_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_entity","ttb_chunk","ttb_chunk_generate"],CustomName:'"ttb_chunk"',Duration:3}
execute positioned ~ 0 ~16 if block ~ ~ ~ bedrock unless entity @e[type=area_effect_cloud,tag=ttb_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_entity","ttb_chunk","ttb_chunk_generate"],CustomName:'"ttb_chunk"',Duration:3}
execute positioned ~ 0 ~-16 if block ~ ~ ~ bedrock unless entity @e[type=area_effect_cloud,tag=ttb_chunk,distance=..1] run summon area_effect_cloud ~ ~ ~ {Tags:["ttb_entity","ttb_chunk","ttb_chunk_generate"],CustomName:'"ttb_chunk"',Duration:3}
