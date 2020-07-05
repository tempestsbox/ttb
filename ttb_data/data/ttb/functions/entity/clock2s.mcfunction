# called by clock2s

# entity clocks
execute if entity @s[type=enderman,tag=ttb_endermenace] run function ttb:entity/endermenace/clock2s

execute if entity @s[type=item_frame] run function ttb:entity/item_frame/clock2s

# add mobs to mob team
team join ttb_mob @s[tag=ttb_mob,team=]
