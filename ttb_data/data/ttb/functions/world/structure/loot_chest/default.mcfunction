execute if block ~ ~ ~ command_block[facing=north] run setblock ~ ~ ~ chest[facing=north]
execute if block ~ ~ ~ command_block[facing=east] run setblock ~ ~ ~ chest[facing=east]
execute if block ~ ~ ~ command_block[facing=south] run setblock ~ ~ ~ chest[facing=south]
execute if block ~ ~ ~ command_block[facing=west] run setblock ~ ~ ~ chest[facing=west]

execute if block ~ ~ ~ command_block run setblock ~ ~ ~ chest

function ttb:util/generate_loot_table_seed
