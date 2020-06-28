particle explosion ~ ~ ~ .5 .5 .5 0 5 normal @a
playsound entity.generic.explode ambient @a[distance=..16] ~ ~ ~ 1 1 1

effect give @e[type=#ttb:undead,tag=!ttb_exp_sim_immune,distance=..3.5] instant_health 1 1 true
effect give @e[type=!#ttb:sprite,type=!#ttb:undead,tag=!ttb_explosion_simulation,tag=!ttb_exp_sim_immune,distance=..3.5] instant_damage 1 1 true

effect give @e[type=#ttb:undead,tag=!ttb_exp_sim_immune,distance=3.5..7] instant_health 1 0 true
effect give @e[type=!#ttb:sprite,type=!#ttb:undead,tag=!ttb_explosion_simulation,tag=!ttb_exp_sim_immune,distance=3.5..7] instant_damage 1 0 true

kill @s
