#called by block/alchemy_chamber/cost/check

particle dust 0.0862 0.8509 0.8117 1 ~ ~ ~ .25 .25 .25 0 100 normal @a

scoreboard players operation @s ttb_tempite_amnt -= $cost_alchemy_chamber ttb_tempite_amnt

scoreboard players operation @s ttb_ascended *= $cost_alchemy_chamber_ascended ttb_tempite_amnt
scoreboard players operation @s ttb_tempite_amnt -= @s ttb_ascended
scoreboard players operation @s ttb_reduced *= $cost_alchemy_chamber_reduced ttb_tempite_amnt
scoreboard players operation @s ttb_tempite_amnt += @s ttb_reduced

scoreboard players operation tempite_amnt_temp ttb_data = @s ttb_tempite_amnt
execute if score @s ttb_tempite_amnt matches ..-1 run function ttb:block/alchemy_chamber/cost/reverse/modify_tempite
