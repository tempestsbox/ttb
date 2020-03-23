#called by item/staff/check_staff

execute unless score @s ttb_mana_saturat >= $use ttb_mana_saturat run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_saturat"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.saturation","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_saturat >= $use ttb_mana_saturat run function ttb:item/staff/saturation/use
