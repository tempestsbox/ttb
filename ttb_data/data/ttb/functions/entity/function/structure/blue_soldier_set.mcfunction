# called by entity/function/structure/blue_soldier_create

execute if block ~ ~ ~ command_block[facing=north] run data modify entity @s Rotation[0] set value 180f
execute if block ~ ~ ~ command_block[facing=east] run data modify entity @s Rotation[0] set value -90f
# execute if block ~ ~ ~ command_block[facing=south] run data modify entity @s Rotation[0] set value 0f
execute if block ~ ~ ~ command_block[facing=west] run data modify entity @s Rotation[0] set value 90f
tp @s ~ ~ ~ ~ ~

loot replace entity @s armor.head loot ttb:entities/function/blue_soldier_armor
loot replace entity @s armor.chest loot ttb:entities/function/blue_soldier_armor
loot replace entity @s armor.legs loot ttb:entities/function/blue_soldier_armor
loot replace entity @s armor.feet loot ttb:entities/function/blue_soldier_armor
loot replace entity @s weapon.mainhand loot ttb:entities/function/blue_soldier_hand

replaceitem entity @s[nbt=!{ArmorItems:[{id:'minecraft:leather_helmet'}]}] armor.head air
