#called by item/staff/check_staff

#audiovisuals
playsound entity.ender_dragon.hurt voice @a[distance=..16] ~ ~ ~ 2 .5 1
particle end_rod ~ ~ ~ 2 2 2 .01 650 normal @a
effect give @s invisibility 10

#functionality
execute store result score @s ttb_ether_gamemo run data get entity @s playerGameType
scoreboard players set @s ttb_ether_specmo 200

#depletion
execute in overworld positioned 29999984 255 29999984 run function ttb:item/staff/durability/update
