#called by clock2s

attribute @s generic.movement_speed base set 0.25

execute if entity @a[distance=..10,gamemode=!creative,gamemode=!spectator,limit=1] run attribute @s generic.movement_speed base set 0

#run effects if player is present
execute if entity @a[distance=..16,gamemode=!creative,gamemode=!spectator,limit=1] run function ttb:entity/mage/player_present_effects
