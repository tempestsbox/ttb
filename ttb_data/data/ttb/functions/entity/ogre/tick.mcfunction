# called by entity/tick

execute if score mobGriefing ttb_gamerules matches 1 if entity @s[tag=ttb_ogre_was_on_ground,nbt={OnGround:1b}] run function ttb:entity/ogre/pound
