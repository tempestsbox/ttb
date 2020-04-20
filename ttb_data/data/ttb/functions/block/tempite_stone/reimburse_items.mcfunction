#called by block/tempite_stone/remove

loot spawn ~ ~ ~ loot ttb:blocks/tempite_stone

scoreboard players operation @s ttb_tempite_amnt /= $amethyst ttb_tempite_amnt
loot spawn ~ ~ ~ loot ttb:items/amethyst
execute store result entity @e[type=item,nbt={Item:{tag:{ttb:{item:"amethyst"}}}},distance=0,limit=1] Item.Count byte 1 run scoreboard players get @s ttb_tempite_amnt
