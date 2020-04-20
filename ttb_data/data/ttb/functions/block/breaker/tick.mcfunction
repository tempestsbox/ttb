#called by entity/armor_stand/tick

#gui
execute if block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.breaker"}'} run function ttb:block/breaker/gui/verify_integrity

#removal
execute unless block ~ ~ ~ barrel[facing=up]{CustomName:'{"translate":"block.ttb.breaker"}'} run function ttb:block/breaker/remove
