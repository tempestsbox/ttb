#called by item/staff/check_staff

execute unless score @s ttb_mana_netherk >= $use ttb_mana_netherk run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_netherk"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.netherknight","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_netherk >= $use ttb_mana_netherk run function ttb:item/staff/netherknight/use
