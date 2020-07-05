# called by entity/blight/tick

# randomise
loot spawn ~ ~ ~ loot ttb:entities/function/blight/ability

# get attack
scoreboard players reset * ttb_attack
execute as @e[type=item,distance=..1,nbt={Item:{tag:{ttb:{random:{}}}}},limit=1] run function ttb:entity/blight/ability/check_random

# run ability
execute if score dodge ttb_attack matches 1 run function ttb:entity/blight/ability/dodge
execute if score freeze ttb_attack matches 1 run function ttb:entity/blight/ability/freeze
