execute if block ~ ~ ~ command_block[facing=up] run setblock ~ ~ ~ dropper[facing=up]
execute if block ~ ~ ~ command_block[facing=down] run setblock ~ ~ ~ dropper[facing=down]
execute if block ~ ~ ~ command_block[facing=north] run setblock ~ ~ ~ dropper[facing=north]
execute if block ~ ~ ~ command_block[facing=east] run setblock ~ ~ ~ dropper[facing=east]
execute if block ~ ~ ~ command_block[facing=south] run setblock ~ ~ ~ dropper[facing=south]
execute if block ~ ~ ~ command_block[facing=west] run setblock ~ ~ ~ dropper[facing=west]

function ttb:util/generate_loot_table_seed
