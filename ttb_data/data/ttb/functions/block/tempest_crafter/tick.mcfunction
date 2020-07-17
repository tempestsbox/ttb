# called by entity/armor_stand/tick

# gui
execute if block ~ ~ ~ barrel run function ttb:block/tempest_crafter/gui/verify_integrity_check

# removal
execute unless block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.tempest_crafter"}'} run function ttb:block/tempest_crafter/remove
