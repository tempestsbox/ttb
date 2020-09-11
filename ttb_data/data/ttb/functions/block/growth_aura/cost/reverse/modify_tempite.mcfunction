# called by block/growth_aura/cost/reverse/all

scoreboard players operation @s ttb_tempite_amnt += $cost_growth_aura ttb_tempite_amnt
scoreboard players operation @s ttb_tempite_amnt += @s ttb_ascended
scoreboard players operation @s ttb_tempite_amnt -= @s ttb_reduced
