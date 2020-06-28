#called by entity/player/tick

function ttb:item/carrot_on_a_stick/get_hand

# staff?
tag @s add ttb_use_crtstck
execute if data storage ttb:temp item_durability_update{tag:{ttb:{item:'staff'}}} run function ttb:item/staff/durability/check
tag @s remove ttb_use_crtstck
# eckspei rod?
execute if data storage ttb:temp item_durability_update{tag:{ttb:{item:'eckspei_rod'}}} unless score @s ttb_durab matches 0 run function ttb:item/eckspei_rod/use

# post
data remove storage ttb:temp item_durability_update
scoreboard players reset @s ttb_use_crtstck
