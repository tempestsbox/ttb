#called by entity/clock2s

#tnt weakness
tag @e[type=tnt,distance=..6,sort=nearest,limit=1] add ttb_blight_tnt
execute at @e[type=tnt,tag=ttb_blight_tnt,distance=..6,limit=1] run function ttb:entity/blight/tnt_weakness

#abilities
execute if predicate ttb:entity/blight/ability/dodge/random_chance if entity @a[distance=..4.5,gamemode=!creative,gamemode=!spectator,limit=1] run function ttb:entity/blight/ability/dodge
