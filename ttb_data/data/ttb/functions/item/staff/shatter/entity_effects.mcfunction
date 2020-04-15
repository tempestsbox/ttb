#called by item/staff/shatter/use

#audiovisuals
particle cloud ~ ~ ~ 1 1 1 .1 250 normal @a
particle lava ~ ~ ~ 1 1 1 .1 50 normal @a
summon firework_rocket ~ ~5 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1b,tag:{Fireworks:{Explosions:[{Type:4b,Flicker:1b,Colors:[I; 16777215],FadeColors:[I; 16711680]}]}}}}

#functionality
data modify entity @s Motion[1] set value 1.7
summon tnt ~ ~ ~ {Fuse:30s,Motion:[0.0,1.2,0.0],Tags:["ttb_entity","ttb_shatter_staff_tnt"]}
