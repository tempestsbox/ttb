#called by item/staff/check_staff

#audiovisuals
particle angry_villager ~ ~ ~ 1 1 1 0.01 50 normal @a

#functionality
effect give @s resistance 1 100
execute at @e[type=!player,type=!#ttb:sprite,distance=..6,sort=random,limit=3] run summon lightning_bolt

#depletion
function ttb:item/staff/durability/update
