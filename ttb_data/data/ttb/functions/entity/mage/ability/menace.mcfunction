#called by entity/mage/player_present_effects

#audiovisuals
particle angry_villager ~ ~ ~ 1 1 1 0.01 10 normal @a
particle composter ~ ~ ~ 1 1 1 0.01 10 normal @a
particle flame ~ ~ ~ 1 1 1 1 10 normal @a
playsound entity.villager.death player @a[distance=..16] ~ ~ ~ 2 0.5 1

#functionality
effect give @e[type=villager,distance=..12] poison 10 1
effect give @e[type=#ttb:entity/mage/ability/menace,distance=..12] speed 10 1
effect give @e[type=#ttb:entity/mage/ability/menace,distance=..12] resistance 10 1
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace #ttb:torch

execute at @e[type=#ttb:entity/mage/ability/menace,distance=..12] run particle angry_villager ~ ~ ~ 1 1 1 0.01 10 normal @a
