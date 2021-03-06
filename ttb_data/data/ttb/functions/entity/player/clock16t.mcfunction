# called by clock16t

# relic
execute if entity @s[predicate=ttb:entity/function/holding/bright_relic] run function ttb:entity/player/holding/bright_relic
execute if entity @s[predicate=ttb:entity/function/holding/dark_relic] run function ttb:entity/player/holding/dark_relic

# tempite stone reporting
execute if entity @e[type=armor_stand,tag=ttb_tempite_stone,distance=..8,limit=1] anchored eyes run function ttb:block/tempite_stone/report_tempite_amount
execute if entity @e[type=armor_stand,tag=ttb_eckspei_locker,distance=..8,limit=1] anchored eyes run function ttb:block/eckspei_locker/report_value

# tempite gel
execute if entity @s[gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{tag:{ttb:{item:'tempite_gel'}}}]}] run function ttb:item/tempite_gel/remove_from_player_inventory

# quick boots
execute if entity @s[gamemode=!spectator,nbt={Inventory:[{Slot:100b,tag:{ttb:{item:'quick_boots'}}}]}] run particle dust 0.031 0.694 0.859 1 ~ ~ ~ .25 0 .25 1 40 normal @a
