# called by entity/item_frame/tick

# fix rotation
data remove entity @s ItemRotation

# placement sound
execute unless entity @s[tag=ttb_block_placed] run playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 1 1
tag @s add ttb_block_placed

# removal
execute unless block ~ ~ ~ #ttb:air run function ttb:block/tempite_insulator/remove
execute if block ^ ^ ^-1 #ttb:replace_on_creation run function ttb:block/tempite_insulator/remove
