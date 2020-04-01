#@s - tempite stone unless block ~ ~ ~ hopper[facing=down]{CustomName:'{"translate":"block.ttb.tempite_stone"}'}
#called by block/tempite_stone/tick

#reimburse items
execute align xyz if entity @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:hopper",tag:{display:{Name:'{"translate":"block.ttb.tempite_stone"}'}}}}] run loot spawn ~.5 ~ ~.5 loot ttb:blocks/tempite_stone

#kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:hopper",tag:{display:{Name:'{"translate":"block.ttb.tempite_stone"}'}}}}]
