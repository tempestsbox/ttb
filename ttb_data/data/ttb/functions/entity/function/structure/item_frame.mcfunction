summon item_frame ~ ~ ~ {Tags:["ttb_entity_init"]}

execute if block ~ ~ ~ command_block[facing=up] align xyz run data modify entity @e[type=item_frame,tag=ttb_entity_init,dx=0,limit=1] Facing set value 1b
execute if block ~ ~ ~ command_block[facing=down] align xyz run data modify entity @e[type=item_frame,tag=ttb_entity_init,dx=0,limit=1] Facing set value 0b
execute if block ~ ~ ~ command_block[facing=north] align xyz run data modify entity @e[type=item_frame,tag=ttb_entity_init,dx=0,limit=1] Facing set value 2b
execute if block ~ ~ ~ command_block[facing=east] align xyz run data modify entity @e[type=item_frame,tag=ttb_entity_init,dx=0,limit=1] Facing set value 5b
execute if block ~ ~ ~ command_block[facing=south] align xyz run data modify entity @e[type=item_frame,tag=ttb_entity_init,dx=0,limit=1] Facing set value 3b
execute if block ~ ~ ~ command_block[facing=west] align xyz run data modify entity @e[type=item_frame,tag=ttb_entity_init,dx=0,limit=1] Facing set value 4b

function ttb:entity/function/structure/post_summon
