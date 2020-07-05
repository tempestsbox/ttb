# called by entity/blight/ability/check_random

# audiovisuals
playsound entity.blaze.shoot hostile @a[distance=..16] ~ ~ ~ 2 1 1
particle sweep_attack ~ ~ ~ 1 1 1 0 25 normal @a

# dodge
effect give @a[distance=..4.5] instant_damage
function ttb:util/near_spread
