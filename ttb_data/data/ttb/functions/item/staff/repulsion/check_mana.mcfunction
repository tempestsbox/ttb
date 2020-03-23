#called by item/staff/check_staff

execute unless score @s ttb_mana_repulsi >= $use ttb_mana_repulsi run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_repulsi"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.repulsion","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_repulsi >= $use ttb_mana_repulsi run function ttb:item/staff/repulsion/use
