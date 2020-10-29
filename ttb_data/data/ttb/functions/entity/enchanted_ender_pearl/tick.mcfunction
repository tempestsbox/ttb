# called by entity/ender_pearl/tick

# audiovisuals
particle witch ~ ~ ~ 0 0 0 1 4 normal @a

# no gravity
data modify entity @s[tag=!ttb_enchanted_ender_pearl_proc] NoGravity set value 1b
tag @s add ttb_enchanted_ender_pearl_proc

# removal conditions
scoreboard players add @s ttb_ench_end_pea 1
execute if score @s ttb_ench_end_pea > $max ttb_ench_end_pea run function ttb:entity/enchanted_ender_pearl/remove

execute if entity @e[type=ender_pearl,tag=ttb_enchanted_ender_pearl,distance=.1..2,limit=1] run function ttb:entity/enchanted_ender_pearl/remove

# player management
tp @p[distance=..2] ~ ~ ~
effect give @p[distance=..2] slow_falling 3 0 true
