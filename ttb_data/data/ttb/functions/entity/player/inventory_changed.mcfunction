# called by advancement entity/player/inventory_changed

execute if data entity @s Inventory[{tag:{AttributeModifiers:[{Name:'ttb:unstackable'}]}}] run function ttb:item/unstackable_inventory_check

# post
advancement revoke @s only ttb:entity/player/inventory_changed
