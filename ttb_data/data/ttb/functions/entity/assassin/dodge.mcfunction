# called by entity/assassin/clock2s

# audiovisuals
playsound entity.player.attack.sweep hostile @a[distance=..16] ~ ~ ~ 2 1 1
particle sweep_attack ~ ~ ~ 1 1 1 0 25 normal @a

# dodge
function ttb:util/near_spread

# audiovisuals
execute at @s run particle sweep_attack ~ ~ ~ 1 1 1 0 25 normal @a
execute at @s run playsound entity.player.attack.sweep hostile @a[distance=..16] ~ ~ ~ 2 1 1
