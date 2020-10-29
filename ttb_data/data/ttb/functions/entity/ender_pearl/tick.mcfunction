# called by entity/tick

execute if data entity @s[tag=!ttb_enchanted_ender_pearl] Item.tag{ttb:{item:'enchanted_ender_pearl'}} run tag @s add ttb_enchanted_ender_pearl
execute if entity @s[tag=ttb_enchanted_ender_pearl] run function ttb:entity/enchanted_ender_pearl/tick
