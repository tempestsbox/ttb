# called by entity/clock2t

# item switching
execute if entity @e[type=#arrows,distance=..10,nbt={inGround:0b},limit=1] if predicate ttb:entity/assassin/dodge_chance if predicate ttb:entity/assassin/dodge_chance if predicate ttb:entity/assassin/dodge_chance run function ttb:entity/assassin/dodge
