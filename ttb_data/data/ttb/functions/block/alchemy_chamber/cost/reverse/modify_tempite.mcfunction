# called by block/alchemy_chamber/cost/reverse/all

scoreboard players operation @s ttb_tempite_amnt += $cost_alchemy_chamber ttb_tempite_amnt
scoreboard players operation @s ttb_tempite_amnt += @s ttb_ascended
scoreboard players operation @s ttb_tempite_amnt -= @s ttb_reduced
