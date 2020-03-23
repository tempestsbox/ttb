#called by item/staff/check_staff

execute unless score @s ttb_mana_extract >= $use ttb_mana_extract run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_extract"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.extraction","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_extract >= $use ttb_mana_extract run function ttb:item/staff/extraction/use
