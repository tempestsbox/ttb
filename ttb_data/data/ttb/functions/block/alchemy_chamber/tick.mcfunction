#called by entity/armor_stand/tick

#gui
execute if block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.alchemy_chamber"}'} run function ttb:block/alchemy_chamber/gui/verify_integrity

#removal
execute unless block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.alchemy_chamber"}'} run function ttb:block/alchemy_chamber/remove
