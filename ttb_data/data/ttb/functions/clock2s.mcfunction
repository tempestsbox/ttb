#clock that runs every 2s

#world generation
execute if score $active_chunks ttb_data matches 32.. run kill @e[type=area_effect_cloud,tag=ttb_chunk,limit=120]

#entity clock
execute as @e at @s run function ttb:entity/clock2s

#reschedule
schedule function ttb:clock2s 2s replace
