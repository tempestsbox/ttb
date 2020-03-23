#called by item/staff/check_staff

execute unless score @s ttb_mana_captiv >= $use ttb_mana_captiv run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_captiv"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.captive","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_captiv >= $use ttb_mana_captiv run function ttb:item/staff/captive/use
