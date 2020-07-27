# called by entity/item/clock16t

# audiovisuals
# playsound entity.firework_rocket.blast player @a[distance=..20] ~ ~ ~ 1 2 1
# playsound entity.firework_rocket.launch player @a[distance=..20] ~ ~ ~ 1 0.5 1

# particle end_rod ~ ~ ~ .15 .2 .1 .05 20 force @a

# functionality
# setblock ~ ~ ~ air
# function ttb:block/tempest_crafter/create

execute store result score tempest_crafter_block_craft_item_count ttb_data if entity @e[type=item,dx=0,nbt={OnGround:1b}]
execute if score tempest_crafter_block_craft_item_count ttb_data matches 5 if entity @e[type=item,dx=0,nbt={Item:{Count:1b,id:"minecraft:end_crystal"}}] if entity @e[type=item,dx=0,nbt={Item:{Count:2b,tag:{ttb:{item:"amethyst"}}}}] if entity @e[type=item,dx=0,nbt={Item:{Count:2b,id:"minecraft:gold_block"}}] if entity @e[type=item,dx=0,nbt={Item:{Count:1b,id:"minecraft:glass"}}] positioned ~.5 ~-.5 ~.5 run function ttb:block/tempest_crafter/craft_block
