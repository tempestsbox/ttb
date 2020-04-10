#tick (20/s)
#@s - invalid
#called by #tick

#world generation
## warn
execute if score $active_chunks ttb_data matches 1..46 run title @a actionbar [[{"text":"[","color":"black"},{"translate":"pack.ttb.name","color":"dark_gray"},{"text":"] ","color":"black"}],[{"translate":"text.ttb.world_generation.warn","color":"dark_gray"}],[" (",{"score":{"name":"$active_chunks","objective":"ttb_data"}},"/48)"]]
execute if score $active_chunks ttb_data matches 47..48 run title @a actionbar [[{"text":"[","color":"black"},{"translate":"pack.ttb.name","color":"dark_gray"},{"text":"] ","color":"black"}],[{"translate":"text.ttb.world_generation.finalising","color":"dark_gray"}]]
execute if score $active_chunks ttb_data matches 1.. unless entity @e[type=area_effect_cloud,tag=ttb_chunk] run scoreboard players reset $active_chunks ttb_data

#general entity ticks
execute as @a at @s run function ttb:entity/player/tick
execute as @e at @s run function ttb:entity/tick

#gamerules
execute store result score mobGriefing ttb_gamerules run gamerule mobGriefing
