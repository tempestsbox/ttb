#called by entity/player/holding/dark_relic

# audiovisuals
particle effect ~ ~ ~ 1 1 1 0.01 200 normal @a
playsound entity.wither.ambient player @a[distance=..16] ~ ~ ~ 2 0.5 1

# add durability
execute store result score @s ttb_staff_dur run data get entity @s SelectedItem.tag.ttb.staff.durability
execute store result score $to_add ttb_staff_durmax run data get entity @s SelectedItem.tag.ttb.staff.max_durability

scoreboard players operation $to_add ttb_staff_durmax /= #2 ttb_gamerules
scoreboard players add $to_add ttb_staff_durmax 1

scoreboard players operation @s ttb_staff_dur += $to_add ttb_staff_durmax
scoreboard players reset $to_add ttb_staff_durmax

execute in overworld positioned 29999984 255 29999984 run function ttb:item/staff/durability/update

# remove dark relic
replaceitem entity @s weapon.offhand air
loot give @s[gamemode=!survival,gamemode=!adventure] loot ttb:items/dark_relic
