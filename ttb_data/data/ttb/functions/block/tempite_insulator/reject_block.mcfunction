# called by block/tempite_insulator/tempite_stone/activate | block/tempite_insulator/initial_activate

execute unless block ~ ~ ~ #ttb:block/tempite_insulator/cannot_remove run setblock ~ ~ ~ air destroy
execute if block ~ ~ ~ command_block{CustomName:'{"translate":"block.ttb.tempite_stone"}'} run setblock ~ ~ ~ air destroy
function ttb:util/explosion_simulation

function ttb:block/tempite_insulator/remove
