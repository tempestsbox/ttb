#called by clock2s

execute if predicate ttb:entity/endermenace/ability/teleport/random_chance if entity @a[distance=..5,gamemode=!creative,gamemode=!spectator] run function ttb:entity/endermenace/ability/teleport
