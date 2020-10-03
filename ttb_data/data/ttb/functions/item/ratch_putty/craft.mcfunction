# called by entity/item/tick || block/breaker/hit_item

particle lava ~ ~ ~ .1 .1 .1 0 4 normal @a
playsound block.lava.extinguish block @a[distance=..16] ~ ~ ~ 1 2 1

loot spawn ~ ~ ~ loot ttb:items/ratch_putty
execute store result entity @e[type=item,distance=0,nbt={Item:{tag:{ttb:{item:'ratch_putty'}}}},limit=1] Item.Count int 0.2 run data get entity @s Item.Count

kill @s
