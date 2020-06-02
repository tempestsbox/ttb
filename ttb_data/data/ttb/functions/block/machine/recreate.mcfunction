#called by block/machine/gui/has_items_kick

execute if entity @s[tag=ttb_breaker] run loot replace entity @s weapon.mainhand loot ttb:items/breaker
execute if entity @s[tag=ttb_acronite_cage] run loot replace entity @s weapon.mainhand loot ttb:items/acronite_cage

summon item_frame ~ ~ ~ {Tags:["ttb_entity","ttb_machine_recreate"]}
execute align xyz run data modify entity @e[type=item_frame,tag=ttb_machine_recreate,dx=0,limit=1] Tags set from entity @s HandItems[0].tag.EntityTag.Tags

setblock ~ ~ ~ air
tp @s ~ ~ ~ ~180 ~
function ttb:entity/player/placed_custom_block
