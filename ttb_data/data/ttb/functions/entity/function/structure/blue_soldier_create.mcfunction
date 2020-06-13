execute align y run summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_blue_soldier"]}
execute align xyz as @e[type=armor_stand,tag=ttb_blue_soldier,dx=0] at @s run function ttb:entity/function/structure/blue_soldier_set
setblock ~ ~ ~ air
