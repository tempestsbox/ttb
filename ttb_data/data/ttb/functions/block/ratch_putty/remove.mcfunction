# called by block/ratch_putty/tick

# reimburse item
loot spawn ~ ~ ~ loot ttb:blocks/ratch_putty
data merge entity @e[type=item,distance=0,limit=1] {Invulnerable:1b}

# removal
kill @s[type=!player]
