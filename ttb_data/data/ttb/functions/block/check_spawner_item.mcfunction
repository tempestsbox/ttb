#checks spawner-dropped items
#@s - @e[type=item,nbt={Item:{tag:{ttb:{spawner:{}}}}}]
#called by launch/tick

#tool conditions
tag @s[nbt={Item:{tag:{ttb:{spawner:{tool:{id:"minecraft:wooden_pickaxe"}}}}}}] add ttb_spawner_wood
tag @s[nbt={Item:{tag:{ttb:{spawner:{tool:{id:"minecraft:stone_pickaxe"}}}}}}] add ttb_spawner_stone
tag @s[nbt={Item:{tag:{ttb:{spawner:{tool:{id:"minecraft:iron_pickaxe"}}}}}}] add ttb_spawner_iron
tag @s[nbt={Item:{tag:{ttb:{spawner:{tool:{id:"minecraft:golden_pickaxe"}}}}}}] add ttb_spawner_gold
tag @s[nbt={Item:{tag:{ttb:{spawner:{tool:{id:"minecraft:diamond_pickaxe"}}}}}}] add ttb_spawner_diamond
tag @s[nbt={Item:{tag:{ttb:{spawner:{tool:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}}}}}] add ttb_spawner_ench_silk
tag @s[nbt=!{Item:{tag:{ttb:{spawner:{tool:{}}}}}}] add ttb_spawner_no_tool

#amethyst ore
execute if entity @s[tag=!ttb_spawner_wood,tag=!ttb_spawner_stone,nbt={Item:{tag:{ttb:{spawner:{item:"amethyst_ore"}}}}}] run function ttb:block/amethyst_ore/drop
execute if entity @s[tag=!ttb_spawner_wood,tag=!ttb_spawner_stone,nbt={Item:{tag:{ttb:{spawner:{item:"vulcaanium_ore"}}}}}] run function ttb:block/vulcaanium_ore/drop

#kill entities
kill @s[type=!player]

#kill orbs if necessary
tag @s[nbt={Item:{tag:{ttb:{spawner:{tool:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}}}}}] add ttb_kill_orbs

execute if entity @s[tag=ttb_kill_orbs] align xyz run kill @e[type=experience_orb,dx=0]
