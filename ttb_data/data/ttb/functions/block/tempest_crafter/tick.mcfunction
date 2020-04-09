#@s - tempest crafter
#called by entity/armor_stand/tick

#removal
execute unless block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.tempest_crafter"}'} run function ttb:block/tempest_crafter/remove

#recipes
execute if block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.tempest_crafter"}'} run function ttb:block/tempest_crafter/gui/verify_integrity
execute unless data block ~ ~ ~ Items[{Slot:16b}] run function ttb:block/tempest_crafter/recipe_validity_check
