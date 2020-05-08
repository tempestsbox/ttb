#called by item/staff/captive/raycast

#functionality
execute align xyz run tp @s ~.5 ~ ~.5

execute positioned ~ ~1 ~ unless entity @s[dx=0] positioned ~ ~1 ~ unless entity @s[dx=0] at @s run function ttb:item/staff/captive/box/tiny

execute positioned ~ ~1 ~ if entity @s[dx=0] at @s run function ttb:item/staff/captive/box/small

execute positioned ~ ~ ~1 if entity @s[dx=0] at @s run function ttb:item/staff/captive/box/fat
execute positioned ~ ~ ~-1 if entity @s[dx=0] at @s run function ttb:item/staff/captive/box/fat
execute positioned ~1 ~ ~ if entity @s[dx=0] at @s run function ttb:item/staff/captive/box/fat
execute positioned ~-1 ~ ~ if entity @s[dx=0] at @s run function ttb:item/staff/captive/box/fat

execute positioned ~ ~2 ~ if entity @s[dx=0] at @s run function ttb:item/staff/captive/box/large

fill ~2 ~4 ~2 ~-2 ~-1 ~-2 ice replace oak_slab[type=double,waterlogged=true]
