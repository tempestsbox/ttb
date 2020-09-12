# called by entity/armor_stand/clock2s

function ttb:util/get_sunlight
execute if score #is_exposed_to_sunlight ttb_data matches 1 if block ~ ~-1 ~ hopper run function ttb:block/amethyst_sunpad/insert_loot
execute unless score #is_exposed_to_sunlight ttb_data matches 1 run data modify entity @s ArmorItems[3].tag.CustomModelData set value 6830012
