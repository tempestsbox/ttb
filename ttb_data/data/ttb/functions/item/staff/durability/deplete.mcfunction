# called by item/staff/durability/check

scoreboard players remove #durability ttb_data 1
execute if score #durability ttb_data matches 1.. in overworld positioned 29999984 255 29999984 run function ttb:item/carrot_on_a_stick/durability/update
execute unless score #durability ttb_data matches 1.. run function ttb:item/staff/break
