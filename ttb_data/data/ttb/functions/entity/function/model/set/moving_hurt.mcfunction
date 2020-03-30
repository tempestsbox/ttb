#called by entity/function/model/check

execute if entity @s[type=zombie,tag=ttb_mage] run function ttb:entity/function/model/set/hurt
scoreboard players set @s[type=zombie,tag=ttb_ore_dweller] ttb_model_cmd 7
scoreboard players set @s[tag=ttb_blight] ttb_model_cmd 11
