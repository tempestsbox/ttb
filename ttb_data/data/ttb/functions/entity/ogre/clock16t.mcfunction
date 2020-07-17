# called by entity/clock16t

execute if score mobGriefing ttb_gamerules matches 1 if entity @a[gamemode=!creative,gamemode=!spectator,distance=..10,limit=1] if predicate ttb:entity/ogre/destroy_surroundings/random_chance anchored eyes rotated ~ 0 positioned ^ ^ ^3 run function ttb:entity/ogre/destroy_surroundings

execute if score mobGriefing ttb_gamerules matches 1 run tag @s[nbt=!{OnGround:1b}] add ttb_ogre_was_on_ground
