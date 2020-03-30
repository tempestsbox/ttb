#called by item/staff/check_staff

#audiovisuals
playsound entity.ender_dragon.hurt voice @a[distance=..16] ~ ~ ~ 2 .5 1
particle end_rod ~ ~ ~ 2 2 2 .01 650 normal @a

#functionality
scoreboard players set @s ttb_ether_specmo 200
effect give @s invisibility 10

#depletion
function ttb:item/staff/durability/update
