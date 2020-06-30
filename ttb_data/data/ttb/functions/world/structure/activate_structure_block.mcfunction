execute if data storage ttb:world structure{orientation:'north'} run data modify block ~ ~ ~ rotation set value "COUNTERCLOCKWISE_90"
# execute if data storage ttb:world structure{orientation:'east'} run data modify block ~ ~ ~ rotation set value "NONE"
execute if data storage ttb:world structure{orientation:'south'} run data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"
execute if data storage ttb:world structure{orientation:'west'} run data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"

setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air replace #ttb:structure_artifact
