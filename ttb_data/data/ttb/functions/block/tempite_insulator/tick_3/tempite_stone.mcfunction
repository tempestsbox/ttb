#called by block/tempite_insulator/tick_3

#audiovisuals
particle block cyan_terracotta ~ ~ ~ .25 .25 .25 0 32 normal @a
particle dust 0.0862 0.8509 0.8117 1 ~ ~ ~ .25 .25 .25 0 100 normal @a
particle explosion ^ ^ ^-1

#functionality
summon creeper ^ ^ ^-1 {Fuse:0s,ExplosionRadius:1b,Tags:["ttb_no_check"],CustomName:'{"translate":"block.ttb.tempite_insulator"}'}
setblock ^ ^ ^-1 air

function ttb:block/tempite_insulator/remove
