#called by block/tempite_insulator/tick_1

#audiovisuals
playsound entity.tnt.primed block @a[distance=..16] ~ ~ ~ 1 1.5 1
particle explosion ^ ^ ^-1

#functionality
execute positioned ^ ^ ^-1 unless block ~ ~ ~ #ttb:block/tempite_insulator/cannot_remove run setblock ~ ~ ~ air destroy
summon creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:1b,Tags:["ttb_no_check"],CustomName:'{"translate":"block.ttb.tempite_insulator"}'}
function ttb:block/tempite_insulator/remove
