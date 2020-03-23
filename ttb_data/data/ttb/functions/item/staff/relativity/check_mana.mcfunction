#called by item/staff/check_staff

execute unless score @s ttb_mana_relativ >= $use ttb_mana_relativ run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_relativ"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.relativity","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_relativ >= $use ttb_mana_relativ run function ttb:item/staff/relativity/use
