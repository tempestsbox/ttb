# called by tick

# custom blocks
## spawner drops
execute if entity @s[nbt={Item:{tag:{ttb:{spawner:{}}}}}] run function ttb:block/check_spawner_item

# ratch putty recipe
execute if block ~ ~.25 ~ lava if entity @s[nbt={Item:{tag:{ttb:{item:'ratch_gel'}}}}] positioned ~ ~.6 ~ run function ttb:item/ratch_putty/craft
