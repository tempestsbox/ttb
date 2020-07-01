# called by item/staff/harvest/use_...

# audiovisuals
particle flash
playsound entity.firework_rocket.blast player @a[distance=..16] ~ ~ ~ 50 2 1
playsound entity.firework_rocket.blast player @a[distance=..16] ~ ~ ~ 50 0 1

# get entity data
data modify storage ttb:temp item.regressed_spawn_egg.tag.EntityTag set from entity @s {}
data remove storage ttb:temp item.regressed_spawn_egg.tag.EntityTag.Pos
data remove storage ttb:temp item.regressed_spawn_egg.tag.EntityTag.Rotation
data remove storage ttb:temp item.regressed_spawn_egg.tag.EntityTag.Dimension

execute if entity @s[type=villager] run data remove storage ttb:temp item.regressed_spawn_egg.tag.Attributes[{Name:'minecraft:generic.movement_speed'}]
# get entity
execute if entity @s[type=bat] run data modify storage ttb:temp item.regressed_spawn_egg.id set value bat_spawn_egg
execute if entity @s[type=blaze] run data modify storage ttb:temp item.regressed_spawn_egg.id set value blaze_spawn_egg
execute if entity @s[type=cave_spider] run data modify storage ttb:temp item.regressed_spawn_egg.id set value cave_spider_spawn_egg
execute if entity @s[type=chicken] run data modify storage ttb:temp item.regressed_spawn_egg.id set value chicken_spawn_egg
execute if entity @s[type=cow] run data modify storage ttb:temp item.regressed_spawn_egg.id set value cow_spawn_egg
execute if entity @s[type=creeper] run data modify storage ttb:temp item.regressed_spawn_egg.id set value creeper_spawn_egg
execute if entity @s[type=donkey] run data modify storage ttb:temp item.regressed_spawn_egg.id set value cow_spawn_egg
execute if entity @s[type=elder_guardian] run data modify storage ttb:temp item.regressed_spawn_egg.id set value guardian_spawn_egg
execute if entity @s[type=enderman] run data modify storage ttb:temp item.regressed_spawn_egg.id set value enderman_spawn_egg
execute if entity @s[type=endermite] run data modify storage ttb:temp item.regressed_spawn_egg.id set value endermite_spawn_egg
execute if entity @s[type=evoker] run data modify storage ttb:temp item.regressed_spawn_egg.id set value zombie_villager_spawn_egg
execute if entity @s[type=ghast] run data modify storage ttb:temp item.regressed_spawn_egg.id set value ghast_spawn_egg
execute if entity @s[type=guardian] run data modify storage ttb:temp item.regressed_spawn_egg.id set value guardian_spawn_egg
execute if entity @s[type=horse] run data modify storage ttb:temp item.regressed_spawn_egg.id set value cow_spawn_egg
execute if entity @s[type=husk] run data modify storage ttb:temp item.regressed_spawn_egg.id set value husk_spawn_egg
execute if entity @s[type=llama] run data modify storage ttb:temp item.regressed_spawn_egg.id set value cow_spawn_egg
execute if entity @s[type=magma_cube] run data modify storage ttb:temp item.regressed_spawn_egg.id set value magma_cube_spawn_egg
execute if entity @s[type=mooshroom] run data modify storage ttb:temp item.regressed_spawn_egg.id set value mooshroom_spawn_egg
execute if entity @s[type=mule] run data modify storage ttb:temp item.regressed_spawn_egg.id set value cow_spawn_egg
execute if entity @s[type=ocelot] run data modify storage ttb:temp item.regressed_spawn_egg.id set value ocelot_spawn_egg
execute if entity @s[type=pig] run data modify storage ttb:temp item.regressed_spawn_egg.id set value pig_spawn_egg
execute if entity @s[type=parrot] run data modify storage ttb:temp item.regressed_spawn_egg.id set value parrot_spawn_egg
execute if entity @s[type=polar_bear] run data modify storage ttb:temp item.regressed_spawn_egg.id set value polar_bear_spawn_egg
execute if entity @s[type=rabbit] run data modify storage ttb:temp item.regressed_spawn_egg.id set value rabbit_spawn_egg
execute if entity @s[type=sheep] run data modify storage ttb:temp item.regressed_spawn_egg.id set value sheep_spawn_egg
execute if entity @s[type=shulker] run data modify storage ttb:temp item.regressed_spawn_egg.id set value shulker_spawn_egg
execute if entity @s[type=silverfish] run data modify storage ttb:temp item.regressed_spawn_egg.id set value silverfish_spawn_egg
execute if entity @s[type=skeleton] run data modify storage ttb:temp item.regressed_spawn_egg.id set value skeleton_spawn_egg
execute if entity @s[type=skeleton_horse] run data modify storage ttb:temp item.regressed_spawn_egg.id set value skeleton_spawn_egg
execute if entity @s[type=slime] run data modify storage ttb:temp item.regressed_spawn_egg.id set value slime_spawn_egg
execute if entity @s[type=spider] run data modify storage ttb:temp item.regressed_spawn_egg.id set value spider_spawn_egg
execute if entity @s[type=squid] run data modify storage ttb:temp item.regressed_spawn_egg.id set value squid_spawn_egg
execute if entity @s[type=stray] run data modify storage ttb:temp item.regressed_spawn_egg.id set value stray_spawn_egg
execute if entity @s[type=vex] run data modify storage ttb:temp item.regressed_spawn_egg.id set value vex_spawn_egg
execute if entity @s[type=villager] run data modify storage ttb:temp item.regressed_spawn_egg.id set value zombie_villager_spawn_egg
execute if entity @s[type=vindicator] run data modify storage ttb:temp item.regressed_spawn_egg.id set value zombie_villager_spawn_egg
execute if entity @s[type=witch] run data modify storage ttb:temp item.regressed_spawn_egg.id set value witch_spawn_egg
execute if entity @s[type=wither_skeleton] run data modify storage ttb:temp item.regressed_spawn_egg.id set value wither_skeleton_spawn_egg
execute if entity @s[type=wolf] run data modify storage ttb:temp item.regressed_spawn_egg.id set value wolf_spawn_egg
execute if entity @s[type=zombie] run data modify storage ttb:temp item.regressed_spawn_egg.id set value zombie_spawn_egg
execute if entity @s[type=zombie_horse] run data modify storage ttb:temp item.regressed_spawn_egg.id set value zombie_spawn_egg
execute if entity @s[type=zombified_piglin] run data modify storage ttb:temp item.regressed_spawn_egg.id set value zombified_piglin_spawn_egg
execute if entity @s[type=zombie_villager] run data modify storage ttb:temp item.regressed_spawn_egg.id set value zombie_villager_spawn_egg

# create item
loot spawn ~ ~ ~ loot ttb:items/staff/harvest/regressed_spawn_egg
execute as @e[type=item,distance=0,nbt={Item:{tag:{ttb:{item:'regressed_spawn_egg'}}}},limit=1] run function ttb:item/staff/harvest/regress/set_item_data

# remove temp
data remove storage ttb:temp item.regressed_spawn_egg
# remove previous entity
tag @s add ttb_remove
