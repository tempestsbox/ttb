# called by entity/blight/ability/check_random

# audiovisuals
particle item_snowball ~ ~ ~ 0 0 2 0 100 force
particle item_snowball ~ ~ ~ 2 0 0 0 100 force
playsound entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 2 2 1
playsound entity.zombie_villager.converted hostile @a[distance=..16] ~ ~ ~ 2 0.5 1

summon area_effect_cloud ~0 ~ ~5 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~0 ~ ~-5 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~1 ~ ~4.9 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~1 ~ ~-4.9 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~2 ~ ~4.58 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~2 ~ ~-4.58 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~3 ~ ~4 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~3 ~ ~-4 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~4 ~ ~3 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~4 ~ ~-3 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~5 ~ ~0 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~5 ~ ~0 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-0 ~ ~5 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-0 ~ ~-5 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-1 ~ ~4.9 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-1 ~ ~-4.9 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-2 ~ ~4.58 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-2 ~ ~-4.58 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-3 ~ ~4 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-3 ~ ~-4 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-4 ~ ~3 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-4 ~ ~-3 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-5 ~ ~0 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item_snowball",Radius:0.5f,Duration:120}

summon area_effect_cloud ~0 ~1 ~5 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~0 ~1 ~-5 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~1 ~1 ~4.9 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~1 ~1 ~-4.9 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~2 ~1 ~4.58 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~2 ~1 ~-4.58 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~3 ~1 ~4 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~3 ~1 ~-4 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~4 ~1 ~3 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~4 ~1 ~-3 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~5 ~1 ~0 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~5 ~1 ~0 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-0 ~1 ~5 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-0 ~1 ~-5 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-1 ~1 ~4.9 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-1 ~1 ~-4.9 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-2 ~1 ~4.58 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-2 ~1 ~-4.58 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-3 ~1 ~4 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-3 ~1 ~-4 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-4 ~1 ~3 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-4 ~1 ~-3 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-5 ~1 ~0 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item packed_ice",Radius:0.5f,Duration:120}

summon area_effect_cloud ~0 ~3 ~5 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~0 ~3 ~-5 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~1 ~3 ~4.9 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~1 ~3 ~-4.9 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~2 ~3 ~4.58 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~2 ~3 ~-4.58 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~3 ~3 ~4 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~3 ~3 ~-4 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~4 ~3 ~3 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~4 ~3 ~-3 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~5 ~3 ~0 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~5 ~3 ~0 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-0 ~3 ~5 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-0 ~3 ~-5 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-1 ~3 ~4.9 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-1 ~3 ~-4.9 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-2 ~3 ~4.58 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-2 ~3 ~-4.58 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-3 ~3 ~4 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-3 ~3 ~-4 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-4 ~3 ~3 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-4 ~3 ~-3 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}
summon area_effect_cloud ~-5 ~3 ~0 {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"item ice",Radius:0.5f,Duration:120}

summon area_effect_cloud ~ ~ ~ {Tags:["ttb_entity","ttb_blight_freeze"],Particle:"block air",Effects:[{Id:2b,Amplifier:4b,Duration:100},{Id:18b,Amplifier:2b,Duration:100}],Radius:5f,Duration:120}
