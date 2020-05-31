# called by item/staff/shatter/raycast / self

# audiovisuals
particle flame ^ ^-.25 ^ .1 .1 .1 0 8 normal @a

# continue
execute positioned ~-.5 ~-.5 ~-.5 if entity @e[type=!player,type=!#ttb:sprite,type=!ender_dragon,dx=0,sort=nearest,limit=1] run function ttb:item/staff/shatter/hit_entity

execute unless block ~ ~ ~ #ttb:block/replace_on_creation run function ttb:item/staff/shatter/hit_block

# recur
tp @s ^ ^ ^.75
