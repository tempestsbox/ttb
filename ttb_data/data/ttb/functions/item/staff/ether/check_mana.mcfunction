#called by item/staff/check_staff

execute unless score @s ttb_mana_ether >= $use ttb_mana_ether run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_ether"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.ether","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_ether >= $use ttb_mana_ether run function ttb:item/staff/ether/use
