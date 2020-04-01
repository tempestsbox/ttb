#@s - tempite stone creation item frame
#called by block/create_block

playsound block.stone.place block @a[distance=..16] ~ ~ ~ 1 1 1

#kill creation item frame
kill @s[type=!player]

#create tempite stone
setblock ~ ~ ~ hopper[facing=down]{CustomName:'{"translate":"block.ttb.tempite_stone"}'} keep
execute unless block ~ ~ ~ hopper{CustomName:'{"translate":"block.ttb.tempite_stone"}'} run loot spawn ~ ~ ~ loot ttb:items/tempite_stone
summon armor_stand ~ ~ ~ {Tags:["ttb_entity","ttb_tempite_stone","ttb_fire_stand"],NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,CustomNameVisible:0b,CustomName:'{"translate":"block.ttb.tempite_stone"}',Fire:17s}
loot replace entity @e[type=armor_stand,tag=ttb_tempite_stone,distance=...1,sort=nearest,limit=1] armor.head loot ttb:items/tempite_stone
