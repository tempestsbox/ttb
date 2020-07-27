# called by block/machine/color_check

scoreboard players set @s ttb_ascended 0
scoreboard players set @s ttb_reduced 0

execute store result score @s ttb_ascended if data block ~ ~ ~ Items[{tag:{ttb:{item:"vulcaanium_crystal"}}}]
execute store result score @s ttb_reduced if data block ~ ~ ~ Items[{tag:{ttb:{item:"amethyst_crystal"}}}]

execute if score @s ttb_ascended matches 1.. run particle dust 0.4 1 0.3 1 ~ ~ ~ .25 .25 .25 0 100 normal @a
execute if score @s ttb_reduced matches 1.. run particle dust 1 0.3 1 1 ~ ~ ~ .25 .25 .25 0 100 normal @a

# check if valid, then cost check
execute positioned ^ ^ ^-1 align xyz if entity @e[type=armor_stand,tag=ttb_tempite_wire,dx=0,limit=1] at @s if entity @e[type=armor_stand,tag=ttb_tempite_stone,distance=..16,scores={ttb_tempite_amnt=1..},sort=nearest,limit=1] run function ttb:block/machine/cost_check
