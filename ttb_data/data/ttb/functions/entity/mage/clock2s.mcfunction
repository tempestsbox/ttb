#called by clock2s

#run effects if player is present
execute if entity @a[distance=..16,gamemode=!creative,gamemode=!spectator,limit=1] run function ttb:entity/mage/player_present_effects
