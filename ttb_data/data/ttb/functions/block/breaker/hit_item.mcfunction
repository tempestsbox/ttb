# called by block/breaker/break_block

particle smoke ~ ~ ~ 0 0 0 0 10 normal @a
data modify entity @s Fire set value 100s

tag @s[nbt={Item:{tag:{ttb:{item:'ratch_gel'}},Count:1b}}] add ttb_breaker_ratch_gel
execute if entity @s[tag=ttb_breaker_ratch_gel] run loot spawn ~ ~ ~ loot ttb:items/ratch_putty
execute if entity @s[tag=ttb_breaker_ratch_gel] run kill @s
