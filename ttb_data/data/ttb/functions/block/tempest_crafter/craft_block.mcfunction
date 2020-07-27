# called by entity/item/clock16t

# audiovisuals
playsound entity.firework_rocket.blast player @a[distance=..20] ~ ~ ~ 1 2 1
playsound entity.firework_rocket.launch player @a[distance=..20] ~ ~ ~ 1 0.5 1

particle end_rod ~ ~ ~ .15 .2 .1 .05 20 force @a

# functionality
execute positioned ~ ~1 ~ align xyz run kill @e[type=item,dx=0]

setblock ~ ~ ~ air
function ttb:block/tempest_crafter/create
