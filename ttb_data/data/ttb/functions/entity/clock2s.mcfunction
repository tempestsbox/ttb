#called by clock2s

execute if entity @s[type=zombie,tag=ttb_mage] run function ttb:entity/mage/clock2s
execute if entity @s[type=skeleton,tag=ttb_blight] run function ttb:entity/blight/clock2s
execute if entity @s[type=enderman,tag=ttb_endermenace] run function ttb:entity/endermenace/clock2s

execute if entity @s[type=item_frame] run function ttb:entity/item_frame/clock2s
