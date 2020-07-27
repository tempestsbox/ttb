# called by block/breaker/tick

# reimburse items
execute align xyz if entity @e[type=item,dx=0,nbt={Item:{id:"minecraft:barrel",tag:{display:{Name:'{"translate":"block.ttb.breaker"}'}}}}] run loot spawn ~.5 ~ ~.5 loot ttb:blocks/breaker

function ttb:block/gui/clear_gui_items

# kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,nbt={Item:{id:"minecraft:barrel",tag:{display:{Name:'{"translate":"block.ttb.breaker"}'}}}}]
