#@s - tempite stone unless block ~ ~ ~ command_block[facing=up]{CustomName:'{"translate":"block.ttb.tempite_stone"}'}
#called by block/tempite_stone/tick

#audiovisuals
playsound block.stone.break block @a[distance=..16] ~ ~ ~ 1 1 1
particle block stone ~ ~ ~ .25 .25 .25 0 64 normal @a
particle block cyan_terracotta ~ ~ ~ .25 .25 .25 0 32 normal @a

#reimburse items
execute align xyz run loot spawn ~.5 ~ ~.5 loot ttb:blocks/tempite_stone

#kill entities
kill @s[type=!player]
