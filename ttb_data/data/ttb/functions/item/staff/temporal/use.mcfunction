#called by item/staff/check_staff

#audiovisuals
playsound entity.wither.death player @a[distance=..32] ~ ~ ~ 2 2 1
particle enchant ~ ~ ~ .5 .5 .5 1 500 normal @a
particle flame ~ ~ ~ .5 .5 .5 1 500 normal @a

tellraw @a [{"selector":"@s","color":"yellow","italic":true}," ",{"translate":"item.staff.temporal.sped_up_time","color":"yellow","italic":true}]

#functionality
spreadplayers ~ ~ 0 36 true @e[type=!#ttb:sprite,distance=..32]

time add 6000

#depletion
scoreboard players operation @s[gamemode=!creative,gamemode=!spectator] ttb_mana_tempora -= $use ttb_mana_tempora
function ttb:item/staff/mana/report
