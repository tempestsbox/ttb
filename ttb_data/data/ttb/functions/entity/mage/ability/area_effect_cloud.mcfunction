# called by entity/mage/attack/check_random

# audiovisuals
playsound entity.guardian.death hostile @a[distance=..16] ~ ~ ~ 2 0.5 1
playsound entity.guardian.death hostile @a[distance=..16] ~ ~ ~ 2 0.7 1
playsound entity.guardian.hurt hostile @a[distance=..16] ~ ~ ~ 2 0.5 1

# summon cloud
summon area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"entity.ttb.mage"}',Tags:["ttb_entity","ttb_mage_area_effect_cloud"],Particle:flame,Duration:600,Radius:7f,RadiusPerTick:-0.065f,RadiusOnUse:0f,Effects:[{Id:7b,ShowParticles:0b,Duration:10,Amplifier:0b},{Id:25b,Duration:15,Amplifier:6b}]}
