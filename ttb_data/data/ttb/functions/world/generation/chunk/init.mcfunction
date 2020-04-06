#called by entity/player/tick

#summon chunk marker
summon area_effect_cloud ~ 0 ~ {Tags:["ttb_chunk","ttb_chunk_init","ttb_chunk_generate"],CustomName:'"ttb_chunk"',Duration:3}
#align to chunk
execute store result entity @e[type=area_effect_cloud,tag=ttb_chunk,tag=ttb_chunk_init,limit=1] Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @e[type=area_effect_cloud,tag=ttb_chunk,tag=ttb_chunk_init,limit=1] Pos[2] double 16 run data get entity @s Pos[2] 0.0625
#if there already was a marker for that chunk, kill the new one
execute at @e[type=area_effect_cloud,tag=ttb_chunk,tag=ttb_chunk_init] if entity @e[type=area_effect_cloud,tag=ttb_chunk,tag=!ttb_chunk_init,distance=..1] run kill @e[tag=ttb_chunk,tag=ttb_chunk_init]

tag @e[type=area_effect_cloud,tag=ttb_chunk] remove ttb_chunk_init
