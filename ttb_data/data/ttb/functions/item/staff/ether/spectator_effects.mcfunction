#called by entity/player/tick

# tick
execute anchored eyes run particle end_rod ^ ^ ^ .3 .3 .3 0.01 1 normal @a
execute if score @s ttb_ether_specmo matches 1..40 anchored eyes run particle lava ^ ^ ^ .5 .5 .5 0.01 1 normal @a

# continue
scoreboard players remove @s ttb_ether_specmo 1

# end
execute unless score @s ttb_ether_specmo matches 2.. run function ttb:item/staff/ether/spectator_end
