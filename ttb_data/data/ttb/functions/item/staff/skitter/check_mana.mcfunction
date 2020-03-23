#called by item/staff/check_staff

execute unless score @s ttb_mana_skitter >= $use ttb_mana_skitter run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_skitter"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.skitter","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_skitter >= $use ttb_mana_skitter run function ttb:item/staff/skitter/use
