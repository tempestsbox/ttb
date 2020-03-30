#called by entity/player/holding/bright_relic

#audiovisuals
playsound entity.endermite.death player @s ~ ~ ~ 2 0.5 1
particle soul_fire_flame ~ ~ ~ 0 0 0 0.25 50 normal @a
particle end_rod ~ ~ ~ .25 1 .25 .1 100 normal @a

#functionality
execute store result score @s ttb_staff_dur run data get entity @s SelectedItem.tag.ttb.staff.durability
scoreboard players add @s ttb_staff_dur 1

function ttb:item/staff/durability/update

scoreboard players operation @s ttb_relic_damage -= $threshold ttb_relic_damage
