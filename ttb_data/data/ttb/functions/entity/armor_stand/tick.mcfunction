#item tick
#@s - armor stand
#called by tick

#create custom block
execute if entity @s[tag=ttb_create_stand] run function ttb:entity/armor_stand/create_custom_block
