#called by entity/mage/player_present_effects

#audiovisuals
playsound entity.guardian.death voice @a[distance=..16] ~ ~ ~ 2 0.5 1
playsound entity.guardian.death voice @a[distance=..16] ~ ~ ~ 2 0.7 1
playsound entity.guardian.hurt voice @a[distance=..16] ~ ~ ~ 2 0.5 1
particle flame ~ ~ ~ 2 0 2 0.01 500 normal @a

#functionality
summon area_effect_cloud ~ ~ ~ {CustomName:'{"translate":"entity.ttb.mage"}',Tags:["ttb_entity","ttb_mage_mage_staff_cloud"],Particle:flame,Duration:600,Radius:4.75f,RadiusPerTick:-0.025f,RadiusOnUse:0f,Potion:"minecraft:harming"}
execute as @a[distance=..14,gamemode=!creative,gamemode=!spectator] at @s run function ttb:item/staff/mage/entity_effects
