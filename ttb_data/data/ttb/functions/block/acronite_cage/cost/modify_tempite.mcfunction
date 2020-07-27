# called by block/acronite_cage/cost/check

particle dust 0.0862 0.8509 0.8117 1 ~ ~ ~ .25 .25 .25 0 100 normal @a

scoreboard players operation @s ttb_tempite_amnt -= $cost_acronite_cage ttb_tempite_amnt

scoreboard players operation @s ttb_ascended *= $cost_acronite_cage_ascended ttb_tempite_amnt
scoreboard players operation @s ttb_tempite_amnt -= @s ttb_ascended
scoreboard players operation @s ttb_reduced *= $cost_acronite_cage_reduced ttb_tempite_amnt
scoreboard players operation @s ttb_tempite_amnt += @s ttb_reduced

scoreboard players operation tempite_amnt_temp ttb_data = @s ttb_tempite_amnt
execute if score @s ttb_tempite_amnt matches ..-1 run function ttb:block/acronite_cage/cost/reverse/modify_tempite
