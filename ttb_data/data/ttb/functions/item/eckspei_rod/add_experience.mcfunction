# called by item/eckspei_rod/use

xp add @s 1 points
scoreboard players remove @s ttb_durab 1
scoreboard players remove #eckspei_rod_xp_loop ttb_data 1

execute unless score #eckspei_rod_xp_loop ttb_data matches 0 unless score @s ttb_durab matches 0 run function ttb:item/eckspei_rod/add_experience
