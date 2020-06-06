# called by item/staff/use_right

function ttb:item/staff/refrigerant/audiovisuals

fill ~-6 ~-6 ~-6 ~6 ~4 ~6 ice replace water
fill ~-6 ~-4 ~-6 ~6 ~4 ~6 cobblestone replace magma_block
fill ~-6 ~-4 ~-6 ~6 ~4 ~6 magma_block replace lava

fill ~-2 ~ ~-2 ~2 ~ ~2 snow keep
execute positioned ~2 ~ ~2 if block ~ ~ ~ snow if block ~ ~-1 ~ #ttb:replace_on_creation run setblock ~ ~ ~ air
