# called by entity/clock2s

# tnt weakness
tag @e[type=tnt,distance=..6,sort=nearest,limit=1] add ttb_blight_tnt
execute at @e[type=tnt,tag=ttb_blight_tnt,distance=..6,limit=1] run function ttb:entity/blight/tnt_weakness

# abilities
execute if predicate ttb:entity/blight/attack/random_chance if entity @a[distance=..8,gamemode=!creative,gamemode=!spectator,limit=1] run function ttb:entity/blight/ability/freeze
execute unless entity @e[type=area_effect_cloud,tag=ttb_blight_freeze,distance=..2,limit=1] run effect clear @s slowness

effect clear @s weakness
