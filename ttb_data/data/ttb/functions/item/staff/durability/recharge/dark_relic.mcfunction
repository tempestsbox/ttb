#called by entity/function/holding/dark_relic

# audiovisuals
particle effect ~ ~ ~ 1 1 1 0.01 200 normal @a
playsound entity.wither.ambient player @a[distance=..16] ~ ~ ~ 2 0.5 1

# add durability
execute store result score @s ttb_durab run data get entity @s SelectedItem.tag.ttb.durability
execute store result score $to_add ttb_durab_max run data get entity @s SelectedItem.tag.ttb.max_durability

scoreboard players operation $to_add ttb_durab_max /= #2 ttb_gamerules
scoreboard players add $to_add ttb_durab_max 1

scoreboard players operation @s ttb_durab += $to_add ttb_durab_max
scoreboard players reset $to_add ttb_durab_max

execute in overworld positioned 29999984 255 29999984 run function ttb:item/carrot_on_a_stick/durability/update

# remove dark relic
replaceitem entity @s weapon.offhand air
loot give @s[gamemode=!survival,gamemode=!adventure] loot ttb:items/dark_relic
