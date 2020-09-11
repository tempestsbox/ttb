# called by block/growth_aura/triggered

particle totem_of_undying ~ ~1 ~ .1 .1 .1 0 36
particle block lime_concrete_powder ~ ~.5 ~ 2 2 2 2 6
particle block green_concrete_powder ~ ~.5 ~ 2 .2 2 2 6
particle happy_villager ~.5 ~.5 ~.5 .25 .25 .25 .025 10 normal @a

execute if block ~ ~ ~ cobblestone run setblock ~ ~ ~ mossy_cobblestone
execute if block ~ ~ ~ stone_bricks run setblock ~ ~ ~ mossy_stone_bricks
execute if block ~ ~ ~ cobblestone_wall run setblock ~ ~ ~ mossy_cobblestone_wall
execute if block ~ ~ ~ dirt run setblock ~ ~ ~ grass_block
execute if block ~ ~ ~ coarse_dirt run setblock ~ ~ ~ grass_block
execute if block ~ ~ ~ podzol run setblock ~ ~ ~ grass_block
execute if block ~ ~ ~ nether_bricks run setblock ~ ~ ~ red_nether_bricks

execute if block ~ ~ ~ wheat[age=6] run setblock ~ ~ ~ wheat[age=7]
execute if block ~ ~ ~ wheat[age=5] run setblock ~ ~ ~ wheat[age=6]
execute if block ~ ~ ~ wheat[age=4] run setblock ~ ~ ~ wheat[age=5]
execute if block ~ ~ ~ wheat[age=3] run setblock ~ ~ ~ wheat[age=4]
execute if block ~ ~ ~ wheat[age=2] run setblock ~ ~ ~ wheat[age=3]
execute if block ~ ~ ~ wheat[age=1] run setblock ~ ~ ~ wheat[age=2]
execute if block ~ ~ ~ wheat[age=0] run setblock ~ ~ ~ wheat[age=1]

execute if block ~ ~ ~ pumpkin_stem[age=6] run setblock ~ ~ ~ pumpkin_stem[age=7]
execute if block ~ ~ ~ pumpkin_stem[age=5] run setblock ~ ~ ~ pumpkin_stem[age=6]
execute if block ~ ~ ~ pumpkin_stem[age=4] run setblock ~ ~ ~ pumpkin_stem[age=5]
execute if block ~ ~ ~ pumpkin_stem[age=3] run setblock ~ ~ ~ pumpkin_stem[age=4]
execute if block ~ ~ ~ pumpkin_stem[age=2] run setblock ~ ~ ~ pumpkin_stem[age=3]
execute if block ~ ~ ~ pumpkin_stem[age=1] run setblock ~ ~ ~ pumpkin_stem[age=2]
execute if block ~ ~ ~ pumpkin_stem[age=0] run setblock ~ ~ ~ pumpkin_stem[age=1]

execute if block ~ ~ ~ melon_stem[age=6] run setblock ~ ~ ~ melon_stem[age=7]
execute if block ~ ~ ~ melon_stem[age=5] run setblock ~ ~ ~ melon_stem[age=6]
execute if block ~ ~ ~ melon_stem[age=4] run setblock ~ ~ ~ melon_stem[age=5]
execute if block ~ ~ ~ melon_stem[age=3] run setblock ~ ~ ~ melon_stem[age=4]
execute if block ~ ~ ~ melon_stem[age=2] run setblock ~ ~ ~ melon_stem[age=3]
execute if block ~ ~ ~ melon_stem[age=1] run setblock ~ ~ ~ melon_stem[age=2]
execute if block ~ ~ ~ melon_stem[age=0] run setblock ~ ~ ~ melon_stem[age=1]

execute if block ~ ~ ~ melon_stem[age=6] run setblock ~ ~ ~ melon_stem[age=7]
execute if block ~ ~ ~ melon_stem[age=5] run setblock ~ ~ ~ melon_stem[age=6]
execute if block ~ ~ ~ melon_stem[age=4] run setblock ~ ~ ~ melon_stem[age=5]
execute if block ~ ~ ~ melon_stem[age=3] run setblock ~ ~ ~ melon_stem[age=4]
execute if block ~ ~ ~ melon_stem[age=2] run setblock ~ ~ ~ melon_stem[age=3]
execute if block ~ ~ ~ melon_stem[age=1] run setblock ~ ~ ~ melon_stem[age=2]
execute if block ~ ~ ~ melon_stem[age=0] run setblock ~ ~ ~ melon_stem[age=1]

execute if block ~ ~ ~ beetroots[age=2] run setblock ~ ~ ~ beetroots[age=3]
execute if block ~ ~ ~ beetroots[age=1] run setblock ~ ~ ~ beetroots[age=2]
execute if block ~ ~ ~ beetroots[age=0] run setblock ~ ~ ~ beetroots[age=1]

execute if block ~ ~ ~ carrots[age=6] run setblock ~ ~ ~ carrots[age=7]
execute if block ~ ~ ~ carrots[age=5] run setblock ~ ~ ~ carrots[age=6]
execute if block ~ ~ ~ carrots[age=4] run setblock ~ ~ ~ carrots[age=5]
execute if block ~ ~ ~ carrots[age=3] run setblock ~ ~ ~ carrots[age=4]
execute if block ~ ~ ~ carrots[age=2] run setblock ~ ~ ~ carrots[age=3]
execute if block ~ ~ ~ carrots[age=1] run setblock ~ ~ ~ carrots[age=2]
execute if block ~ ~ ~ carrots[age=0] run setblock ~ ~ ~ carrots[age=1]

execute if block ~ ~ ~ potatoes[age=6] run setblock ~ ~ ~ potatoes[age=7]
execute if block ~ ~ ~ potatoes[age=5] run setblock ~ ~ ~ potatoes[age=6]
execute if block ~ ~ ~ potatoes[age=4] run setblock ~ ~ ~ potatoes[age=5]
execute if block ~ ~ ~ potatoes[age=3] run setblock ~ ~ ~ potatoes[age=4]
execute if block ~ ~ ~ potatoes[age=2] run setblock ~ ~ ~ potatoes[age=3]
execute if block ~ ~ ~ potatoes[age=1] run setblock ~ ~ ~ potatoes[age=2]
execute if block ~ ~ ~ potatoes[age=0] run setblock ~ ~ ~ potatoes[age=1]

execute if block ~ ~ ~ nether_wart[age=2] run setblock ~ ~ ~ nether_wart[age=3]
execute if block ~ ~ ~ nether_wart[age=1] run setblock ~ ~ ~ nether_wart[age=2]
execute if block ~ ~ ~ nether_wart[age=0] run setblock ~ ~ ~ nether_wart[age=1]

execute if block ~ ~ ~ sweet_berry_bush[age=1] run setblock ~ ~ ~ sweet_berry_bush[age=2]
execute if block ~ ~ ~ sweet_berry_bush[age=0] run setblock ~ ~ ~ sweet_berry_bush[age=1]
