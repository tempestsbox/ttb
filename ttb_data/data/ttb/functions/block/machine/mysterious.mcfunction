#called by block/machine/cost_check

function ttb:block/machine/get_enchantments
execute if entity @s[tag=ttb_breaker] run function ttb:block/breaker/cost/enchantments
