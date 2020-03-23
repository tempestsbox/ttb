#called by item/staff/check_staff

execute unless score @s ttb_mana_blight >= $use ttb_mana_blight run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_blight"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.blight","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_blight >= $use ttb_mana_blight run function ttb:item/staff/blight/use
