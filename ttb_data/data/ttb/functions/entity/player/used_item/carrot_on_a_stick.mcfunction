#called by entity/player/tick

execute if entity @s[predicate=ttb:entity/player/holding/staff] run function ttb:item/staff/durability/check

scoreboard players reset @s ttb_use_crtstck
