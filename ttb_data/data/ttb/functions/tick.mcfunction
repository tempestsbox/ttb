# tick (20/s)
# called by #tick

# general entity ticks
execute as @a at @s run function ttb:entity/player/tick
execute as @e at @s run function ttb:entity/tick

# constants
execute store result score mobGriefing ttb_gamerules run gamerule mobGriefing
execute store result score doFireTick ttb_gamerules run gamerule doFireTick

execute store result score difficulty ttb_gamerules run difficulty
scoreboard players set $max ttb_exp_pil_time 100
scoreboard players operation difficulty ttb_gamerules *= #2 ttb_gamerules
scoreboard players operation $max ttb_exp_pil_time /= difficulty ttb_gamerules
