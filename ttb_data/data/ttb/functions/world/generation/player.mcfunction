#called by entity/player/clock2t

execute positioned ~-8 ~ ~-8 as @e[type=area_effect_cloud,tag=ttb_chunk,tag=!ttb_chunk_generated,sort=nearest,limit=1] at @s if block ~ ~ ~ bedrock run function ttb:world/generation/chunk/generate
execute if entity @s[nbt={Dimension:"minecraft:overworld"}] if block ~ 0 ~ bedrock run function ttb:world/generation/chunk/init
