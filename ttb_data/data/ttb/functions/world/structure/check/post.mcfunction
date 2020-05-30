# called by world/structure/check/...

loot replace block ~ ~ ~ container.0 mine ~ ~ ~ air{drop_contents:1b}
data modify block ~ ~ ~ Items[0].tag.ttb.world.structure.integrity set from block ~ ~ ~ Items[0].tag.AttributeModifiers[{Name:'ttb:integrity'}].Amount
data modify block ~ ~ ~ Items[0].tag.ttb.world.structure.height set from block ~ ~ ~ Items[0].tag.AttributeModifiers[{Name:'ttb:height'}].Amount
data modify storage ttb:world structure.spawns append from block ~ ~ ~ Items[0].tag.ttb.world.structure

setblock ~ ~ ~ air
