# called by block/breaker/triggered

setblock ~ ~ ~ air destroy
particle flame ~ ~ ~ 0 0 0.25 0.025 10 normal @a

execute align xyz at @e[type=item,dx=0] run particle smoke ~ ~ ~ 0 0 0 0 10 normal @a
execute align xyz as @e[type=item,dx=0] run data modify entity @s Fire set value 100s
