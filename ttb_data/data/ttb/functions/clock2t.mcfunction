# clock that runs every 2t

# entity clock
execute as @a at @s run function ttb:entity/player/clock2t
execute as @e[type=skeleton,tag=ttb_assassin] at @s run function ttb:entity/assassin/clock2t

# world generation
execute as @e[type=area_effect_cloud,tag=ttb_chunk,tag=ttb_chunk_generated] at @s run function ttb:world/generation/chunk/kill

# reschedule
schedule function ttb:clock2t 2t replace
