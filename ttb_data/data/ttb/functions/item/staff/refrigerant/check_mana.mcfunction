#called by item/staff/check_staff

execute unless score @s ttb_mana_refrige >= $use ttb_mana_refrige run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_refrige"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.refrigerant","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_refrige >= $use ttb_mana_refrige run function ttb:item/staff/refrigerant/use
