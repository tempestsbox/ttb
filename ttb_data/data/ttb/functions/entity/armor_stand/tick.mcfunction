# called by entity/tick

scoreboard players remove @s[scores={ttb_machine_cool=1..}] ttb_machine_cool 1
scoreboard players reset @s[scores={ttb_machine_cool=..0}] ttb_machine_cool

# custom block ticks
execute if entity @s[tag=ttb_tempest_crafter] run function ttb:block/tempest_crafter/tick

execute if entity @s[tag=ttb_tempite_stone] run function ttb:block/tempite_stone/tick
execute if entity @s[tag=ttb_tempite_wire] run function ttb:block/tempite_wire/tick
execute if entity @s[tag=ttb_machine] run function ttb:block/machine/tick

# custom entity ticks
execute if entity @s[tag=ttb_pillar_explosion] run function ttb:entity/mage/pillar/variant/explosion/tick
