# called by entity/tick

# clear levitation
effect clear @s levitation

# run effects if random and player is present
execute if predicate ttb:entity/mage/attack/random_chance if entity @a[gamemode=!creative,gamemode=!spectator,distance=..18,limit=1] run function ttb:entity/mage/attack_check
