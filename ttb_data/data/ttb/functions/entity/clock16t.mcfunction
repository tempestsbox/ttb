# called by clock16t

# health bars
execute if entity @s[type=armor_stand,tag=ttb_health_bar_passenger] run function ttb:entity/function/health_bar/pre

# entity clocks
execute if entity @s[type=item] run function ttb:entity/item/clock16t
execute if entity @s[type=armor_stand] run function ttb:entity/armor_stand/clock16t
execute if entity @s[type=bat] run function ttb:entity/bat/clock16t
