# called by block/tempite_insulator/tick

# reimburse item
loot spawn ~ ~ ~ loot ttb:blocks/tempite_insulator
data merge entity @e[type=item,distance=0,limit=1] {Invulnerable:1b}

# removal
kill @s[type=!player]
