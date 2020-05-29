#checks spawner-dropped items
#@s - @e[type=item,nbt={Item:{tag:{ttb:{spawner:{}}}}}]
#called by tick

execute if entity @s[predicate=ttb:block/check_spawner_item/block/amethyst_ore] run function ttb:block/amethyst_ore/drop
execute if entity @s[predicate=ttb:block/check_spawner_item/block/vulcaanium_ore] run function ttb:block/vulcaanium_ore/drop

#kill entities
kill @s[type=item]

#kill orbs if necessary
execute if entity @s[predicate=ttb:block/check_spawner_item/kill_orbs] align xyz run kill @e[type=experience_orb,dx=0]
