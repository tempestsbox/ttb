# called by entity/void_gas/clock16t

playsound entity.blaze.shoot voice @a[distance=..16] ~ ~ ~ 1 0.5 1
particle flame ~ ~ ~ 1 1 1 0 100 normal @a

function ttb:util/explosion_simulation
execute if score mobGriefing ttb_gamerules matches 1 positioned ~ ~1 ~ run function ttb:entity/void_gas/summon_fire

tag @s add ttb_remove
