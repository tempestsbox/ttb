# called by block/breaker/break_block

particle smoke ~ ~ ~ 0 0 0 0 10 normal @a
data modify entity @s Fire set value 100s

execute if entity @s[nbt={Item:{tag:{ttb:{item:'ratch_gel'}}}}] run function ttb:item/ratch_putty/craft
