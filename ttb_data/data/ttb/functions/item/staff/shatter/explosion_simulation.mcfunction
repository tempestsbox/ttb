#called by entity/tick

particle explosion ~ ~ ~ .5 .5 .5 0 5 normal @a

summon creeper ~ ~ ~ {Tags:["ttb_entity","ttb_no_check","ttb_shatter_staff_explosion"],Fuse:0s,ExplosionRadius:0b}

effect give @e[type=#ttb:undead,distance=..2,limit=1] instant_health 1 2 true
effect give @e[type=!player,type=!#ttb:sprite,type=!#ttb:undead,tag=!ttb_shatter_staff_explosion,distance=..2,limit=1] instant_damage 1 2 true

kill @s
