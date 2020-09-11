# called by entity/armor_stand/tick

# gui
execute if block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.growth_aura"}'} run function ttb:block/machine/gui/verify_integrity_check

# removal
execute unless block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.growth_aura"}'} run function ttb:block/growth_aura/remove
