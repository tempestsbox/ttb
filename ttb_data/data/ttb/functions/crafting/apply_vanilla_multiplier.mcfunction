#called by block/[CRAFTER]/craft

execute store result score @s ttb_van_crft_cnt run clear @s knowledge_book

#DEV NOTE :: the reason we don't create a separate function
#            for multiple of the same selector here is because
#            it is easier to get the player entity context
data modify entity @e[type=item,sort=nearest,limit=1] Owner.M set from entity @s UUIDMost
data modify entity @e[type=item,sort=nearest,limit=1] Owner.L set from entity @s UUIDLeast
data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0
execute store result entity @e[type=item,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get @s ttb_van_crft_cnt
