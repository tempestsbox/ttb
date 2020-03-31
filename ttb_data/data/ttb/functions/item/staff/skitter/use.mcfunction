#called by item/staff/check_staff

#audiovisuals
playsound entity.spider.hurt voice @a[distance=..16] ~ ~ ~ 2 1.3 1
playsound entity.spider.hurt voice @a[distance=..16] ~ ~ ~ 2 0.7 1
playsound entity.spider.death voice @a[distance=..16] ~ ~ ~ 2 0.5 1
particle dust 0 0 0 1 ~ ~ ~ 2 0 2 0.01 1000 normal @a
execute at @e[type=!player,type=!#ttb:sprite,distance=..6] run particle dust 0 0 0 1 ~ ~ ~ 1 1 1 0.01 500 normal @a

#functionality
effect give @e[type=!player,type=!#ttb:sprite,distance=..6] wither 10 5
effect give @s speed 10 10
effect give @s jump_boost 10 7

#depletion
execute in overworld positioned 29999984 255 29999984 run function ttb:item/staff/durability/update
