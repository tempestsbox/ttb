#called by entity/function/model/check

execute if entity @s[tag=ttb_mage] run function ttb:entity/function/model/set/hurt
scoreboard players set @s[tag=ttb_ore_dweller] ttb_model_cmd 7
