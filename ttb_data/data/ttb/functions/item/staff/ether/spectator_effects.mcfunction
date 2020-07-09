# called by entity/player/tick

# tick
execute anchored eyes run particle end_rod ^ ^ ^ .3 .3 .3 0.01 1 normal @a
execute if score @s ttb_ether_specmo matches 160.. anchored eyes run particle lava ^ ^ ^ .5 .5 .5 0.01 1 normal @a

# start
gamemode spectator @s[scores={ttb_ether_specmo=0}]

# continue
scoreboard players add @s ttb_ether_specmo 1

# end
execute if score @s ttb_ether_specmo matches 200.. run function ttb:item/staff/ether/spectator_end
execute unless entity @s[gamemode=spectator] run function ttb:item/staff/ether/spectator_end
