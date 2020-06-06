#called by entity/player/tick

# get current durability
execute store result score @s ttb_durab run data get entity @s SelectedItem.tag.ttb.durability

# used
## staff?
tag @s add ttb_use_crtstck
execute if entity @s[predicate=ttb:entity/function/holding/staff] run function ttb:item/staff/durability/check
tag @s remove ttb_use_crtstck
## eckspei rod?
execute if entity @s[predicate=ttb:entity/function/holding/eckspei_rod] unless score @s ttb_durab matches 0 run function ttb:item/eckspei_rod/use

scoreboard players reset @s ttb_use_crtstck
