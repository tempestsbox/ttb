# called by entity/armor_stand/tick

# gui
execute if block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.amethyst_sunpad"}'} run function ttb:block/amethyst_sunpad/gui/verify_integrity_check

# removal
execute unless block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.amethyst_sunpad"}'} run function ttb:block/amethyst_sunpad/remove
