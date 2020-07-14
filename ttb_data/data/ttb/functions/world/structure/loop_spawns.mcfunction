# called by world/structure/spawn

execute if data storage ttb:temp world.structure.spawns[0].modifiers[{id:'top_spread'}] run function ttb:util/top_spread
execute if data storage ttb:temp world.structure.spawns[0].height run data modify entity @s Pos[1] set from storage ttb:temp world.structure.spawns[0].height

execute if data storage ttb:temp world.structure.spawns[0].name at @s run function ttb:world/structure/spawn_default
execute if data storage ttb:temp world.structure.spawns[0].id at @s run function ttb:world/structure/spawn_id

tellraw @a[tag=ttb_debug] [{"nbt":"Pos","entity":"@s"}," ",{"nbt":"structure.spawns[0].name","storage":"ttb:world"},{"nbt":"structure.spawns[0].id","storage":"ttb:world"}]

data remove storage ttb:temp world.structure.spawns[0]
execute if data storage ttb:temp world.structure.spawns[0] run function ttb:world/structure/loop_spawns
