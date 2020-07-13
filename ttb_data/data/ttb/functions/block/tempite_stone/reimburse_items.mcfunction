# called by block/tempite_stone/remove

scoreboard players operation @s ttb_tempite_amnt /= $amethyst ttb_tempite_amnt
loot spawn ~ ~ ~ loot ttb:items/amethyst
scoreboard players operation #temp ttb_tempite_amnt = @s ttb_tempite_amnt
execute as @e[type=item,distance=0,nbt={Item:{tag:{ttb:{item:"amethyst"}}}},limit=1] run function ttb:block/tempite_stone/reimburse_items_data
