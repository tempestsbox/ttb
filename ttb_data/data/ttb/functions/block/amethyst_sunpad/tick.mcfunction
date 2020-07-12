# called by entity/armor_stand/tick

# gui
execute unless entity @s[tag=ttb_amethyst_sunpad_updated_to_new_base] if block ~ ~ ~ barrel{CustomName:'{"translate":"block.ttb.amethyst_sunpad"}'} run function ttb:block/amethyst_sunpad/update_to_new_base

# removal
execute unless block ~ ~ ~ pink_terracotta run function ttb:block/amethyst_sunpad/remove
