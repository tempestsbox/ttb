# called by item/staff/use_right

# audiovisuals
playsound block.bell.resonate player @a[distance=..32] ~ ~ ~ 2 2 1
particle enchant ~ ~ ~ .5 .5 .5 1 500 normal @a
particle flame ~ ~ ~ .5 .5 .5 1 500 normal @a

tellraw @a [{"translate":"item.ttb.staff.temporal.sped_up_time","with":[{"selector":"@s"}],"color":"yellow","italic":true}]

# add time
time add 6000
# spread entities
execute as @e[type=!player,type=!#ttb:sprite,distance=..32] positioned ~-15 ~-4 ~-15 if entity @s[dx=31,dy=8,dz=31] at @s run function ttb:item/staff/temporal/spread_entity
