execute if block ~ ~ ~ command_block[facing=north] run setblock ~ ~ ~ trapped_chest[facing=north]
execute if block ~ ~ ~ command_block[facing=east] run setblock ~ ~ ~ trapped_chest[facing=east]
execute if block ~ ~ ~ command_block[facing=south] run setblock ~ ~ ~ trapped_chest[facing=south]
execute if block ~ ~ ~ command_block[facing=west] run setblock ~ ~ ~ trapped_chest[facing=west]

execute if block ~ ~ ~ command_block run setblock ~ ~ ~ trapped_chest

function ttb:util/generate_loot_table_seed
