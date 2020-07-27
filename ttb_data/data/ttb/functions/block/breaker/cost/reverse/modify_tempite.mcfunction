# called by block/breaker/cost/reverse/all

scoreboard players operation @s ttb_tempite_amnt += $cost_breaker ttb_tempite_amnt
scoreboard players operation @s ttb_tempite_amnt += @s ttb_ascended
scoreboard players operation @s ttb_tempite_amnt -= @s ttb_reduced
