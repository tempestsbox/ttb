#called by item/staff/check_staff

execute unless score @s ttb_mana_mage >= $use ttb_mana_mage run title @s actionbar [{"score":{"name":"@s","objective":"ttb_mana_mage"},"color":"red"},{"text":"% ","color":"red"},{"translate":"item.ttb.staff.mage","color":"dark_red"}," ",{"translate":"item.ttb.staff","color":"dark_red"}," ",{"translate":"text.ttb.mana","color":"dark_red"}]
execute if score @s ttb_mana_mage >= $use ttb_mana_mage run function ttb:item/staff/mage/use
