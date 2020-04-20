#called by block/breaker/cost/reverse/all

scoreboard players operation @s ttb_tempite_amnt += $cost_breaker ttb_tempite_amnt

scoreboard players remove @s[scores={ttb_reduced=1}] ttb_tempite_amnt 3
scoreboard players remove @s[scores={ttb_reduced=2}] ttb_tempite_amnt 6
scoreboard players remove @s[scores={ttb_reduced=3}] ttb_tempite_amnt 9
scoreboard players remove @s[scores={ttb_reduced=4}] ttb_tempite_amnt 12
scoreboard players remove @s[scores={ttb_reduced=5}] ttb_tempite_amnt 15
scoreboard players remove @s[scores={ttb_reduced=6}] ttb_tempite_amnt 18

scoreboard players add @s[scores={ttb_ascended=1}] ttb_tempite_amnt 3
scoreboard players add @s[scores={ttb_ascended=2}] ttb_tempite_amnt 6
scoreboard players add @s[scores={ttb_ascended=3}] ttb_tempite_amnt 9
scoreboard players add @s[scores={ttb_ascended=4}] ttb_tempite_amnt 12
scoreboard players add @s[scores={ttb_ascended=5}] ttb_tempite_amnt 15
scoreboard players add @s[scores={ttb_ascended=6}] ttb_tempite_amnt 18
