#called by item/staff/check_staff

execute unless score @s ttb_mana_infalli >= $use ttb_mana_infalli run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_infalli"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.infallible","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_infalli >= $use ttb_mana_infalli run function ttb:item/staff/infallible/use
