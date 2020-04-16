#called by tick

title @a actionbar [[{"text":"[","color":"black"},{"translate":"pack.ttb.name","color":"dark_gray"},{"text":"] ","color":"black"}],[{"translate":"text.ttb.world_generation.done","color":"dark_gray"}]]

scoreboard players reset active_chunks ttb_data
kill @e[type=area_effect_cloud,tag=ttb_chunk]
