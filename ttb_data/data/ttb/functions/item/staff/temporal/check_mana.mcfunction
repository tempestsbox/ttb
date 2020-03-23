#called by item/staff/check_staff

execute unless score @s ttb_mana_tempora >= $use ttb_mana_tempora run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_tempora"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.temporal","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_tempora >= $use ttb_mana_tempora run function ttb:item/staff/temporal/use
