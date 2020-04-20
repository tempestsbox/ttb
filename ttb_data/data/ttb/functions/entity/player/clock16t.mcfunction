#called by clock16t

#relic
execute if entity @s[predicate=ttb:entity/player/holding/bright_relic] run function ttb:entity/player/holding/bright_relic
execute if entity @s[predicate=ttb:entity/player/holding/dark_relic] run function ttb:entity/player/holding/dark_relic

#tempite stone reporting
execute if entity @e[type=armor_stand,tag=ttb_tempite_stone,distance=..8] anchored eyes run function ttb:block/tempite_stone/report_tempite_amount
