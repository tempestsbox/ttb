# called by block/tempest_crafter/recipe_check

data modify storage ttb:temp item.restoration_tome.repair_item set from storage ttb:temp block.tempest_crafter.input[{tag:{ttb:{staff:{}}}}]

execute store result score #durability ttb_data run data get storage ttb:temp item.restoration_tome.repair_item.tag.ttb.durability
execute store result score #durability_max ttb_data run data get storage ttb:temp item.restoration_tome.repair_item.tag.ttb.max_durability

execute unless score #durability ttb_data = #durability_max ttb_data run function ttb:item/restoration_tome/restore/staff
