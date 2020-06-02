# called by entity/tick

scoreboard players add @s ttb_age 1
execute if score @s ttb_age matches 10.. run particle effect ~ ~ ~ 0 0 0 1 1 force @a
