#item tick
#@s - item
#called by tick

#custom blocks
## spawner drops
execute if entity @s[nbt={Item:{tag:{ttb:{spawner:{}}}}}] run function ttb:block/check_spawner_item
