#called by block/breaker/tick

#reimburse items
execute align xyz if entity @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:barrel",tag:{display:{Name:'{"translate":"block.ttb.breaker"}'}}}}] run loot spawn ~.5 ~ ~.5 loot ttb:blocks/breaker

data remove block ~ ~-1 ~ Items[{tag:{ttb:{gui_item:1b}}}]
execute as @e[type=hopper_minecart] run data remove entity @s Items[{tag:{ttb:{gui_item:1b}}}]
kill @e[type=item,nbt={Item:{tag:{ttb:{gui_item:1b}}}}]
clear @a barrier{ttb:{gui_item:1b}}

#kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:barrel",tag:{display:{Name:'{"translate":"block.ttb.breaker"}'}}}}]
