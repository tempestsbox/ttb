#called by block/tempest_crafter/recipe_check

data modify storage ttb:temp item.restoration_tome.repair_item set from storage ttb:temp block.tempest_crafter.input[0]
data modify storage ttb:temp item.restoration_tome.repair_item.Slot set value 16b
execute unless data storage ttb:temp item.restoration_tome.repair_item{tag:{Damage:0}} run function ttb:item/restoration_tome/restore/item
