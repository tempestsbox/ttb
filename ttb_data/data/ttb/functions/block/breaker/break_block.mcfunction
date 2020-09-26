# called by block/breaker/triggered

setblock ~ ~ ~ air destroy
particle flame ~ ~ ~ 0 0 0.25 0.025 10 normal @a

execute align xyz as @e[type=item,dx=0] at @s run function ttb:block/breaker/hit_item
