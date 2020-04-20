#called by block/machine/cost_check

#copy required variables to tempite stone
scoreboard players operation @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] ttb_ench_level = @s ttb_ench_level
scoreboard players operation @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] ttb_ascended = @s ttb_ascended
scoreboard players operation @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] ttb_reduced = @s ttb_reduced
scoreboard players operation @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] ttb_ench_quarry = @s ttb_ench_quarry
scoreboard players operation @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] ttb_ench_wither = @s ttb_ench_wither
scoreboard players operation @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] ttb_ench_fortune = @s ttb_ench_fortune
scoreboard players operation @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] ttb_ench_silk = @s ttb_ench_silk
scoreboard players operation @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] ttb_ench_smelt = @s ttb_ench_smelt
scoreboard players operation @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] ttb_ench_power = @s ttb_ench_power

#run calculations
execute as @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] at @s run function ttb:block/breaker/cost/modify_tempite

#trigger if had enough tempite
execute if score @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] ttb_tempite_amnt matches 0.. run function ttb:block/breaker/triggered
