#@s - tempest crafter unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.ttb.tempest_crafter"}'}
#called by ttb/block/tempest_crafter/tick

#reimburse items
execute align xyz if entity @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.ttb.tempest_crafter"}'}}}}] run loot spawn ~.5 ~ ~.5 loot ttb:blocks/tempest_crafter

#kill entities
kill @s[type=!player]
execute align xyz run kill @e[type=item,dx=0,dy=0,dz=0,nbt={Item:{id:"minecraft:dropper",tag:{display:{Name:'{"translate":"block.ttb.tempest_crafter"}'}}}}]
