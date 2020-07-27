# called by block/alchemy_chamber/check_block

# audiovisuals
particle block gold_block ~ ~ ~ .5 .5 .5 .1 20 normal @a
particle block iron_block ~ ~ ~ .5 .5 .5 .1 20 normal @a
particle block obsidian ~ ~ ~ .5 .5 .5 .1 20 normal @a
playsound entity.enderman.teleport block @a[distance=..16] ~ ~ ~ 1 .5 1
playsound block.stone.break block @a[distance=..16] ~ ~ ~ 1 .5 1

# convert
execute if block ~ ~ ~ iron_ore run setblock ~ ~ ~ iron_block
execute if block ~ ~ ~ gold_ore run setblock ~ ~ ~ gold_block

execute if block ~ ~ ~ prismarine run setblock ~ ~ ~ sea_lantern
execute if block ~ ~ ~ sandstone run setblock ~ ~ ~ quartz_block
execute if block ~ ~ ~ soul_sand run setblock ~ ~ ~ glowstone
execute if block ~ ~ ~ #anvil run setblock ~ ~ ~ anvil
execute if block ~ ~ ~ #logs run setblock ~ ~ ~ coal_block

execute if block ~ ~ ~ magma_block run setblock ~ ~ ~ obsidian
execute if block ~ ~ ~ cobblestone run setblock ~ ~ ~ magma_block
execute if block ~ ~ ~ netherrack run setblock ~ ~ ~ magma_block
