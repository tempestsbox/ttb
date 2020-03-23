#called by item/staff/check_staff

execute unless score @s ttb_mana_harvest >= $use ttb_mana_harvest run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_harvest"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.harvest","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_harvest >= $use ttb_mana_harvest run function ttb:item/staff/harvest/use
