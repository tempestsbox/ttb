#called by item/staff/check_staff

#audiovisuals
playsound entity.zombie.attack_iron_door voice @a[distance=..16] ~ ~ ~ 2 0.5 1
particle block cobblestone ~ ~ ~ 2 2 2 .01 650 normal @a

#functionality
execute as @e[type=!player,type=!#ttb:sprite,distance=..6,sort=random,limit=1] at @s run function ttb:item/staff/captive/create_box

#depletion
scoreboard players operation @s[gamemode=!creative,gamemode=!spectator] ttb_mana_captiv -= $use ttb_mana_captiv
function ttb:item/staff/mana/report
