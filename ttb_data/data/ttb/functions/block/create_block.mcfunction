# called by entity/player/placed_custom_block

execute if entity @s[tag=ttb_create_amethyst_ore] run function ttb:block/amethyst_ore/create
execute if entity @s[tag=ttb_create_vulcaanium_ore] run function ttb:block/vulcaanium_ore/create

execute if entity @s[tag=ttb_create_tempest_crafter] run function ttb:block/tempest_crafter/create
execute if entity @s[tag=ttb_create_tempite_stone] run function ttb:block/tempite_stone/create

execute if entity @s[tag=ttb_create_breaker] run function ttb:block/breaker/create
execute if entity @s[tag=ttb_create_acronite_cage] run function ttb:block/acronite_cage/create
execute if entity @s[tag=ttb_create_eckspei_locker] run function ttb:block/eckspei_locker/create
execute if entity @s[tag=ttb_create_alchemy_chamber] run function ttb:block/alchemy_chamber/create
execute if entity @s[tag=ttb_create_amethyst_sunpad] run function ttb:block/amethyst_sunpad/create

execute as @e[type=armor_stand,tag=ttb_block,tag=ttb_block_directional,distance=...1,limit=1] run scoreboard players operation @s ttb_machine_rot = custom_block_rotation ttb_data
kill @s
