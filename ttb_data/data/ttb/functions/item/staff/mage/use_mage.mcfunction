#called by entity/mage/player_present_effects

#audiovisuals
playsound entity.guardian.death hostile @a[distance=..16] ~ ~ ~ 2 0.5 1
playsound entity.guardian.death hostile @a[distance=..16] ~ ~ ~ 2 0.7 1
playsound entity.guardian.hurt hostile @a[distance=..16] ~ ~ ~ 2 0.5 1
particle flame ~ ~ ~ 2 0 2 0.01 500 normal @a

#functionality
summon area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"entity.ttb.mage"}',Tags:["ttb_entity","ttb_mage_mage_staff_cloud"],Particle:flame,Duration:600,Radius:7f,RadiusPerTick:-0.065f,RadiusOnUse:0f}
summon area_effect_cloud ~ ~3 ~ {CustomName:'{"translate":"entity.ttb.mage"}',Tags:["ttb_entity","ttb_mage_mage_staff_cloud"],Particle:"block air",Duration:600,Radius:7f,RadiusPerTick:-0.065f,RadiusOnUse:0f,Effects:[{Id:7b,ShowParticles:0b,Duration:10,Amplifier:2b}]}
execute as @a[distance=..14,gamemode=!creative,gamemode=!spectator] at @s run function ttb:item/staff/mage/entity_effects
