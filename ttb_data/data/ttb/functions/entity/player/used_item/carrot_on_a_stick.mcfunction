#called by entity/player/tick

tag @s add ttb_use_crtstck
execute if entity @s[predicate=ttb:entity/player/holding/staff] run function ttb:item/staff/durability/check
tag @s remove ttb_use_crtstck

scoreboard players reset @s ttb_use_crtstck
