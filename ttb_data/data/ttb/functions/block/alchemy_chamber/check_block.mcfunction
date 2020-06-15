# called by block/alchemy_chamber/triggered

particle totem_of_undying ~ ~-.5 ~ .25 0 .25 .1 50 normal @a
execute if block ~ ~ ~ #ttb:block/alchemy_chamber/convertible run function ttb:block/alchemy_chamber/convert_block
