# called by item/staff/use_right

function ttb:item/staff/mage/audiovisuals
particle flame ~ ~ ~ 1 0 1 0.01 500 normal @a

execute as @e[type=!player,type=!#ttb:sprite,distance=..2] at @s run function ttb:item/staff/mage/entity_effects

# scoreboard players add @e[tag=canWisp,distance=..10] wispLife 1
# execute as @e[tag=canWisp,distance=..10] run particle flame ~ ~ ~ 1 1 1 1 300 force
# execute as @e[tag=canWisp,distance=..10] run playsound entity.ghast.ambient hostile @a[distance=..16] ~ ~ ~ 2 0.5 1
# execute as @e[tag=canWisp,distance=..10] run playsound entity.ghast.ambient hostile @a[distance=..16] ~ ~ ~ 2 0.6 1
# execute as @e[tag=canWisp,distance=..10] run playsound entity.ghast.ambient hostile @a[distance=..16] ~ ~ ~ 2 0.7 1
# execute as @e[tag=canWisp,distance=..10] run spreadplayers ~ ~ 1 10 false @p
# execute as @e[scores={wispLife=5..}] run playsound entity.lightning_bolt.impact hostile @a[distance=..32] ~ ~ ~ 2 2 1
# execute as @e[scores={wispLife=5..}] run playsound weather.rain hostile @a[distance=..30] ~ ~ ~ 2 2 1
# kill @e[scores={wispLife=5..}]
