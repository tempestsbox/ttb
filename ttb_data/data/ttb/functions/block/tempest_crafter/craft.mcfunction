#craft tempest crafter
#called by advancement :: recipes/tempest_crafter

loot spawn ~ ~ ~ loot ttb:items/tempest_crafter
function ttb:crafting/apply_vanilla_multiplier
recipe take @s ttb:tempest_crafter
advancement revoke @s only ttb:recipes/tempest_crafter
