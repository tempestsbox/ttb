# called by entity/item_frame/tick

# fix rotation
data remove entity @s ItemRotation

# placement sound
execute unless entity @s[tag=ttb_block_placed] run playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 1 1
tag @s add ttb_block_placed

# cooking time increase
execute positioned ^ ^ ^-1 if data block ~ ~ ~ CookTime if data block ~ ~ ~ Items[{Slot:0b}] run function ttb:block/ratch_putty/accelerate_cooktime

# audiovisuals
particle block orange_concrete ~ ~ ~ .2 .2 .2 0 1 normal @a
particle smoke ~ ~ ~ .2 .2 .2 0 3 normal @a

# removal
execute unless block ~ ~ ~ #ttb:air run function ttb:block/ratch_putty/remove
execute if block ^ ^ ^-1 #ttb:replace_on_creation run function ttb:block/ratch_putty/remove
