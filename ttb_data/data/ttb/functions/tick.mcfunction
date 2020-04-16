#tick (20/s)
#called by #tick

#world generation
execute if score active_chunks ttb_data matches 1.. if score active_chunks ttb_data < active_chunks_max ttb_data run title @a actionbar [[{"text":"[","color":"black"},{"translate":"pack.ttb.name","color":"dark_gray"},{"text":"] ","color":"black"}],[{"translate":"text.ttb.world_generation.warn","color":"dark_gray"}],[" (",{"score":{"name":"active_chunks","objective":"ttb_data"}},"/",{"score":{"name":"active_chunks_max","objective":"ttb_data"}},")"]]
execute if score active_chunks ttb_data >= active_chunks_max ttb_data if entity @e[type=area_effect_cloud,tag=ttb_chunk] run function ttb:world/generation/done

#general entity ticks
execute as @a at @s run function ttb:entity/player/tick
execute as @e at @s run function ttb:entity/tick

#gamerules
execute store result score mobGriefing ttb_gamerules run gamerule mobGriefing
