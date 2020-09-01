execute if data storage ttb:temp world.structure{orientation:'north'} run data modify block ~ ~ ~ rotation set value "COUNTERCLOCKWISE_90"
# execute if data storage ttb:temp world.structure{orientation:'east'} run data modify block ~ ~ ~ rotation set value "NONE"
execute if data storage ttb:temp world.structure{orientation:'south'} run data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"
execute if data storage ttb:temp world.structure{orientation:'west'} run data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"

tellraw @a[tag=ttb_debug] [[{"text":"","color":"gray","italic":true}],[{"translate":"text.ttb.debug","with":[[[{"block":"~ ~ ~","nbt":"name"}," / ",{"block":"~ ~ ~","nbt":"x"},", ",{"block":"~ ~ ~","nbt":"y"},", ",{"block":"~ ~ ~","nbt":"z"}],"\n ",[{"block":"~ ~ ~","nbt":"integrity"}," / ",{"block":"~ ~ ~","nbt":"seed"}]]]}]]

setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air replace #ttb:structure_artifact

data remove storage ttb:temp world.structure.orientation
