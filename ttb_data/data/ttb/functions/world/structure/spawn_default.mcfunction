# called by world/structure/loop_spawns

function ttb:world/structure/prepare_structure_block

data modify block ~ ~ ~ name set from storage ttb:world structure.spawns[0].name
data modify block ~ ~ ~ integrity set from storage ttb:world structure.spawns[0].integrity
data modify block ~ ~ ~ posY set from storage ttb:world structure.spawns[0].shift_y

function ttb:world/structure/activate_structure_block
execute if data storage ttb:world structure.spawns[0].modifiers[{id:'replace_stone'}] run fill ~ ~ ~ ~ ~1 ~ stone keep
