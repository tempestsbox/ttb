#called by item/staff/check_staff

#audiovisuals
playsound entity.wither.death player @a[distance=..32] ~ ~ ~ 2 2 1
particle enchant ~ ~ ~ .5 .5 .5 1 500 normal @a
particle flame ~ ~ ~ .5 .5 .5 1 500 normal @a

tellraw @a [{"selector":"@s","color":"yellow","italic":true}," ",{"translate":"item.ttb.staff.temporal.sped_up_time","color":"yellow","italic":true}]

#functionality
time add 6000

#depletion
function ttb:item/staff/durability/update

spreadplayers ~ ~ 0 36 true @e[type=!player,type=!#ttb:sprite,distance=..32]
