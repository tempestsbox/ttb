#clock that runs 16/s

#world generation
## done message
execute if score $active_chunks ttb_data matches 48.. run title @a actionbar [[{"text":"[","color":"black"},{"translate":"pack.ttb.name","color":"dark_gray"},{"text":"] ","color":"black"}],[{"translate":"text.ttb.world_generation.done","color":"dark_gray"}]]
## cull
execute if score $active_chunks ttb_data matches 48.. run kill @e[type=area_effect_cloud,tag=ttb_chunk]

execute as @a at @s run function ttb:entity/player/clock16t
execute as @e[type=item] at @s run function ttb:entity/item/clock16t

#reschedule
schedule function ttb:clock16t 16t replace
