# tick (20/s)
# called by #tick

# general entity ticks
execute as @a at @s run function ttb:entity/player/tick
execute as @e at @s run function ttb:entity/tick

# gamerules
execute store result score mobGriefing ttb_gamerules run gamerule mobGriefing
execute store result score doFireTick ttb_gamerules run gamerule doFireTick
