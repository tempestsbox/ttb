#called by item/staff/check_staff

execute unless score @s ttb_mana_spirit >= $use ttb_mana_spirit run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_spirit"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.spirit","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_spirit >= $use ttb_mana_spirit run function ttb:item/staff/spirit/use
