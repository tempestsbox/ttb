#called by clock16t

#relic
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{ttb:{item:"bright_relic"}}}]}] run function ttb:entity/player/holding/bright_relic
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{ttb:{item:"dark_relic"}}}]}] run function ttb:entity/player/holding/dark_relic
