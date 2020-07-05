# called by entity/bat/clock16t

execute unless entity @s[nbt={Fire:-1s}] align xyz positioned ~.5 ~ ~.5 run function ttb:entity/void_gas/explode
