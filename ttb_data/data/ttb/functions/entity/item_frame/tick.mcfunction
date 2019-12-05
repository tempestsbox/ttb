#item frame tick
#@s - item frame
#called by tick

#create custom block
execute if entity @s[tag=ttb_create_entity] align xyz positioned ~.5 ~.5 ~.5 run function ttb:entity/item_frame/create_custom_block
