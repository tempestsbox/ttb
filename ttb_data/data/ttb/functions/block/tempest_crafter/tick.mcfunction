#@s - tempest crafter
#called by entity/armor_stand/tick

#removal
execute unless block ~ ~ ~ dropper[facing=up]{CustomName:'{"translate":"block.ttb.tempest_crafter"}'} run function ttb:block/tempest_crafter/remove

#recipes
execute if block ~ ~ ~ dropper[triggered=false]{Items:[{}]} run function ttb:crafting/recipe_validity_check
