# called by block/machine/cost_check

# copy required variables to tempite stone
scoreboard players operation @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] ttb_ascended = @s ttb_ascended
scoreboard players operation @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] ttb_reduced = @s ttb_reduced

# run calculations
execute as @e[type=armor_stand,tag=ttb_tempite_stone_nearest,limit=1] at @s run function ttb:block/alchemy_chamber/cost/modify_tempite

# trigger if had enough tempite
execute unless score tempite_amnt_temp ttb_data matches ..-1 run function ttb:block/alchemy_chamber/triggered
