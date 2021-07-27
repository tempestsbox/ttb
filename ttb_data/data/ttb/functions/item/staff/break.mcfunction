# called by item/staff/durability/check

execute anchored eyes positioned ^ ^ ^.5 positioned ~ ~.03 ~ run particle item stick ~ ~ ~ .1 .1 .1 0 12 normal @a
playsound entity.item.break player @a[distance=..16] ~ ~ ~ .75 1 1

execute unless data storage ttb:temp item_durability_update{Slot:-106b} run item replace entity @s weapon.mainhand with air
execute if data storage ttb:temp item_durability_update{Slot:-106b} run item replace entity @s weapon.offhand with air
