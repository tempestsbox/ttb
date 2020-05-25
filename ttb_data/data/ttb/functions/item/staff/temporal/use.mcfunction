#called by item/staff/check_staff

#audiovisuals
playsound block.bell.resonate player @a[distance=..32] ~ ~ ~ 2 2 1
particle enchant ~ ~ ~ .5 .5 .5 1 500 normal @a
particle flame ~ ~ ~ .5 .5 .5 1 500 normal @a

tellraw @a [{"translate":"item.ttb.staff.temporal.sped_up_time","with":[{"selector":"@s"}],"color":"yellow","italic":true}]

#functionality
time add 6000

#depletion
execute in overworld positioned 29999984 255 29999984 run function ttb:item/staff/durability/update

execute as @e[type=!player,type=!#ttb:sprite,distance=..32] positioned ~-15 ~-4 ~-15 if entity @s[dx=31,dy=8,dz=31] at @s run spreadplayers ~ ~ 0 9 false @s
