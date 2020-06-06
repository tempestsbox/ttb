# called by item/staff/use_left

function ttb:item/staff/refrigerant/audiovisuals

data remove entity @s Motion

execute align xyz run tp @s ~.5 ~ ~.5
fill ~ ~ ~ ~ ~1 ~ ice keep

effect give @s slowness 3 10

fill ~-1 ~ ~-1 ~1 ~ ~1 snow keep
execute positioned ~1 ~ ~1 if block ~ ~ ~ snow if block ~ ~-1 ~ #ttb:replace_on_creation run setblock ~ ~ ~ air
