# #called by entity/blight/clock2s

scoreboard players set @s ttb_blight_frze 140

particle item_snowball ~ ~ ~ 0 0 2 0 100 force
particle item_snowball ~ ~ ~ 2 0 0 0 100 force
playsound entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 2 2 1
playsound entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 2 0.5 1
# execute if entity @s[score_mobFreeze_min=139,score_mobFreeze=139] run summon area_effect_cloud ~+0.0 ~ ~+5.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=138,score_mobFreeze=138] run summon area_effect_cloud ~+0.0 ~ ~-5.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=136,score_mobFreeze=136] run summon area_effect_cloud ~+1.0 ~ ~+4.9 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=134,score_mobFreeze=134] run summon area_effect_cloud ~+1.0 ~ ~-4.9 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=132,score_mobFreeze=132] run summon area_effect_cloud ~+2.0 ~ ~+4.58 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=130,score_mobFreeze=130] run summon area_effect_cloud ~+2.0 ~ ~-4.58 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=128,score_mobFreeze=128] run summon area_effect_cloud ~+3.0 ~ ~+4.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=126,score_mobFreeze=126] run summon area_effect_cloud ~+3.0 ~ ~-4.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=124,score_mobFreeze=124] run summon area_effect_cloud ~+4.0 ~ ~+3.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=122,score_mobFreeze=122] run summon area_effect_cloud ~+4.0 ~ ~-3.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=120,score_mobFreeze=120] run summon area_effect_cloud ~+5.0 ~ ~+0.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=118,score_mobFreeze=118] run summon area_effect_cloud ~+5.0 ~ ~+0.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=139,score_mobFreeze=139] run summon area_effect_cloud ~-0.0 ~ ~+5.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=138,score_mobFreeze=138] run summon area_effect_cloud ~-0.0 ~ ~-5.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=136,score_mobFreeze=136] run summon area_effect_cloud ~-1.0 ~ ~+4.9 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=134,score_mobFreeze=134] run summon area_effect_cloud ~-1.0 ~ ~-4.9 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=132,score_mobFreeze=132] run summon area_effect_cloud ~-2.0 ~ ~+4.58 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=130,score_mobFreeze=130] run summon area_effect_cloud ~-2.0 ~ ~-4.58 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=128,score_mobFreeze=128] run summon area_effect_cloud ~-3.0 ~ ~+4.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=126,score_mobFreeze=126] run summon area_effect_cloud ~-3.0 ~ ~-4.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=124,score_mobFreeze=124] run summon area_effect_cloud ~-4.0 ~ ~+3.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=122,score_mobFreeze=122] run summon area_effect_cloud ~-4.0 ~ ~-3.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
# execute if entity @s[score_mobFreeze_min=120,score_mobFreeze=120] run summon area_effect_cloud ~-5.0 ~ ~+0.0 {Tags:["ENfreeze"],Particle:snowballpoof,Radius:0.5f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:120}
execute at @e[tag=ENfreeze] run particle item packed_ice ~ ~1 ~ 0 1 0 0 0 normal @a
execute at @e[tag=ENfreeze] run particle item ice ~ ~3 ~ 0 0.5 0 0 0 normal @a
execute at @e[tag=ENfreeze] run effect give @a[distance=..3] slowness 5 100 true
