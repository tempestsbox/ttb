#called by world/generation/player

# summon a chunk marker and align it to the chunk grid
summon area_effect_cloud ~ 0 ~ {Tags:["ttb_chunk","init"],CustomName:'"ttb_chunk"',Duration:2000000000}
execute store result entity @e[type=area_effect_cloud,tag=ttb_chunk,tag=init,limit=1] Pos[0] double 16 run data get entity @s Pos[0] 0.0625
execute store result entity @e[type=area_effect_cloud,tag=ttb_chunk,tag=init,limit=1] Pos[2] double 16 run data get entity @s Pos[2] 0.0625
# if there already was a marker for that chunk, kill the new one
execute at @e[type=area_effect_cloud,tag=ttb_chunk,tag=init] if entity @e[type=area_effect_cloud,tag=ttb_chunk,tag=!init,distance=..1] run kill @e[tag=ttb_chunk,tag=init]
tag @e[type=area_effect_cloud,tag=ttb_chunk,tag=init] remove init
