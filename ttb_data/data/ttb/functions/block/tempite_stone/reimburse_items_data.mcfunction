# called by block/tempite_stone/reimburse_items

execute store result entity @s Item.Count byte 1 run scoreboard players get #temp ttb_tempite_amnt
data modify entity @s Item.tag.ttb.tempite_energy.unstable set value 1b

execute unless data entity @s Item.tag.display.Lore run data modify entity @s Item.tag.display.Lore set value []
data modify entity @s Item.tag.display.Lore append value '{"translate":"item.ttb.amethyst.unstable.lore"}'
