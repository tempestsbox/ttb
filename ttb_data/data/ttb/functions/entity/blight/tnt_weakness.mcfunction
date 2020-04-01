#called by entity/blight/clock2s

#functionality
effect give @s instant_health 5 5
data modify entity @s Motion set value [0.0,0.5,0.0]

execute at @s run summon creeper ~ ~ ~ {Fuse:0s,CustomName:'[{"translate":"text.ttb.entity.whilst_fighting","with":[{"translate":"block.minecraft.tnt"},{"translate":"entity.ttb.blight"}]}]',ExplosionRadius:1b,Tags:["ttb_no_check"]}
execute at @s run summon firework_rocket ~ ~ ~ {LifeTime:5,FireworksItem:{id:firework_rocket,Count:1b,tag:{Fireworks:{Explosions:[{Type:1b,Colors:[I; 0],FadeColors:[I; 16715535]}]}}}}
kill @e[type=tnt,tag=ttb_blight_tnt,distance=..6,limit=1]
