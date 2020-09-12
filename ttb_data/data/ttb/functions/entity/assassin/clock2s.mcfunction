# called by entity/clock2s

# item switching
execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..8,limit=1] run tag @s add ttb_assassin_sword

execute if entity @s[tag=ttb_assassin_sword] run loot replace entity @s weapon.mainhand loot ttb:items/assassin/sword
execute unless entity @s[tag=ttb_assassin_sword] run loot replace entity @s weapon.mainhand loot ttb:items/assassin/bow

tag @s remove ttb_assassin_sword

# dodge
execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=2..4,limit=1] if predicate ttb:entity/assassin/dodge_chance run function ttb:entity/assassin/dodge
