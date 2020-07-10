# called by entity/item/tick

# drop
summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_spawner_drop"],CustomName:'"ttb_spawner_drop"',Invisible:1b,Invulnerable:1b,Small:1b,Marker:1b,Silent:1b}
data modify entity @e[type=armor_stand,tag=ttb_spawner_drop,distance=...1,limit=1] HandItems[0] set from entity @s Item.tag.ttb.spawner.tool

execute if entity @s[predicate=ttb:block/check_spawner_item/block/amethyst_ore] run function ttb:block/amethyst_ore/drop
execute if entity @s[predicate=ttb:block/check_spawner_item/block/amethyst_block] run function ttb:block/amethyst_block/drop
execute if entity @s[predicate=ttb:block/check_spawner_item/block/vulcaanium_ore] run function ttb:block/vulcaanium_ore/drop
execute if entity @s[predicate=ttb:block/check_spawner_item/block/vulcaanium_block] run function ttb:block/vulcaanium_block/drop

# kill orbs if necessary
execute if entity @s[predicate=ttb:block/check_spawner_item/kill_orbs] align xyz run kill @e[type=experience_orb,dx=0]

# remove entities
kill @e[type=armor_stand,tag=ttb_spawner_drop,distance=...1,limit=1]
kill @s
