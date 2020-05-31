#called by item/staff/use_right

replaceitem entity @s weapon.mainhand air

execute anchored eyes positioned ^ ^ ^.5 positioned ~ ~.03 ~ run particle item stick ~ ~ ~ .1 .1 .1 0 12 normal @a
playsound entity.item.break player @a[distance=..16] ~ ~ ~ .75 1 1
