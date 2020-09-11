# called by block/growth_aura/tick

# reimburse items
execute align xyz if entity @e[type=item,dx=0,nbt={Item:{id:"minecraft:barrel",tag:{display:{Name:'{"translate":"block.ttb.growth_aura"}'}}}}] run loot spawn ~.5 ~ ~.5 loot ttb:blocks/growth_aura

function ttb:block/gui/clear_gui_items

# kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,nbt={Item:{id:"minecraft:barrel",tag:{display:{Name:'{"translate":"block.ttb.growth_aura"}'}}}}]
