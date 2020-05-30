execute if data storage ttb:world structure.orientation[{id:"minecraft:north"}].id run data modify block ~ ~ ~ rotation set value "COUNTERCLOCKWISE_90"
# execute if data storage ttb:world structure.orientation[{id:"minecraft:east"}].id run data modify block ~ ~ ~ rotation set value "NONE"
execute if data storage ttb:world structure.orientation[{id:"minecraft:south"}].id run data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"
execute if data storage ttb:world structure.orientation[{id:"minecraft:west"}].id run data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"

setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air replace #ttb:structure_artifact
