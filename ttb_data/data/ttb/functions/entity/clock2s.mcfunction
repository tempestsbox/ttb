# called by clock2s

# entity clocks
execute if entity @s[type=enderman,tag=ttb_endermenace] run function ttb:entity/endermenace/clock2s
execute if entity @s[type=skeleton,tag=ttb_assassin] run function ttb:entity/assassin/clock2s

execute if entity @s[type=item_frame] run function ttb:entity/item_frame/clock2s
execute if entity @s[type=armor_stand] run function ttb:entity/armor_stand/clock2s

# add mobs to mob team
team join ttb_mob @s[tag=ttb_mob,team=]
