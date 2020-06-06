#called by block/tempest_crafter/recipe_check

data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item set from block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{tag:{ttb:{staff:{}}}}]

execute store result score @s ttb_durab run data get block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item.tag.ttb.durability
execute store result score @s ttb_durab_max run data get block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item.tag.ttb.max_durability

execute unless score @s ttb_durab = @s ttb_durab_max run function ttb:item/restoration_tome/restore/staff
