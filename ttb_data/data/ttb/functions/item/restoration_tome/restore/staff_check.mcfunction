#called by block/tempest_crafter/recipe_check

data modify block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item set from block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.input[{tag:{ttb:{staff:{}}}}]

execute store result score @s ttb_staff_dur run data get block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item.tag.ttb.staff.durability
execute store result score @s ttb_staff_durmax run data get block ~ ~ ~ Items[{Slot:1b}].tag.ttb.crafting.restoration_tome.repair_item.tag.ttb.staff.max_durability

execute unless score @s ttb_staff_dur = @s ttb_staff_durmax run function ttb:item/restoration_tome/restore/staff
