#called by item/staff/check_staff

#audiovisuals
playsound entity.guardian.death voice @a[distance=..16] ~ ~ ~ 2 0.5 1
playsound entity.guardian.death voice @a[distance=..16] ~ ~ ~ 2 0.7 1
playsound entity.guardian.hurt voice @a[distance=..16] ~ ~ ~ 2 0.5 1
particle flame ~ ~ ~ 2 0 2 0.01 500 normal @a
execute at @e[type=!player,type=!#ttb:sprite,distance=..6] run particle flame ~ ~3 ~ 0 1 0 0.01 100 normal @a

#functionality
effect give @e[type=!player,type=!#ttb:sprite,distance=..6] levitation 4 1

# scoreboard players add @e[tag=canWisp,distance=..10] wispLife 1
# execute as @e[tag=canWisp,distance=..10] run particle flame ~ ~ ~ 1 1 1 1 300 force
# execute as @e[tag=canWisp,distance=..10] run playsound entity.ghast.ambient voice @a[distance=..16] ~ ~ ~ 2 0.5 1
# execute as @e[tag=canWisp,distance=..10] run playsound entity.ghast.ambient voice @a[distance=..16] ~ ~ ~ 2 0.6 1
# execute as @e[tag=canWisp,distance=..10] run playsound entity.ghast.ambient voice @a[distance=..16] ~ ~ ~ 2 0.7 1
# execute as @e[tag=canWisp,distance=..10] run spreadplayers ~ ~ 1 10 false @p
# execute as @e[scores={wispLife=5..}] run playsound entity.lightning_bolt.impact voice @a[distance=..32] ~ ~ ~ 2 2 1
# execute as @e[scores={wispLife=5..}] run playsound weather.rain voice @a[distance=..30] ~ ~ ~ 2 2 1
# kill @e[scores={wispLife=5..}]

#depletion
scoreboard players operation @s[gamemode=!creative,gamemode=!spectator] ttb_mana_mage -= $use ttb_mana_mage
function ttb:item/staff/mana/report
