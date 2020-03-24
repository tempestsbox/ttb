#called by entity/mage/player_present_effects

#audiovisuals
playsound entity.blaze.shoot player @a[distance=..16] ~ ~ ~ 0.2 2 0.2
playsound entity.blaze.shoot player @a[distance=..16] ~ ~ ~ 0.2 0.5 0.2

#functionality
summon vex ~ ~ ~ {LifeTicks:200,Tags:["ttb_entity","ttb_flame","ttb_vehicle"],Passengers:[{id:area_effect_cloud,CustomName:'[{"translate":"entity.ttb.flame"},{"translate":"text.ttb.entity.from"},{"translate":"entity.ttb.mage"}]',Tags:["ttb_entity","ttb_flame","ttb_passenger"],Particle:flame,Radius:.1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:200}],ArmorItems:[{},{},{},{id:magma_block,Count:1b}],ArmorDropChances:[0F,0F,0F,0F],HandItems:[{},{id:stick,Count:1b,tag:{CustomModelData:6830001}}],HandDropChances:[0F,0F,0F,0F],Attributes:[{Name:generic.attackDamage,Base:0d}],Silent:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999,ShowParticles:0b}]}
summon vex ~ ~ ~ {LifeTicks:200,Tags:["ttb_entity","ttb_flame","ttb_vehicle"],Passengers:[{id:area_effect_cloud,CustomName:'[{"translate":"entity.ttb.flame"},{"translate":"text.ttb.entity.from"},{"translate":"entity.ttb.mage"}]',Tags:["ttb_entity","ttb_flame","ttb_passenger"],Particle:flame,Radius:.1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:200}],ArmorItems:[{},{},{},{id:magma_block,Count:1b}],ArmorDropChances:[0F,0F,0F,0F],HandItems:[{},{id:stick,Count:1b,tag:{CustomModelData:6830001}}],HandDropChances:[0F,0F,0F,0F],Attributes:[{Name:generic.attackDamage,Base:0d}],Silent:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999,ShowParticles:0b}]}
summon vex ~ ~ ~ {LifeTicks:200,Tags:["ttb_entity","ttb_flame","ttb_vehicle"],Passengers:[{id:area_effect_cloud,CustomName:'[{"translate":"entity.ttb.flame"},{"translate":"text.ttb.entity.from"},{"translate":"entity.ttb.mage"}]',Tags:["ttb_entity","ttb_flame","ttb_passenger"],Particle:flame,Radius:.1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:200}],ArmorItems:[{},{},{},{id:magma_block,Count:1b}],ArmorDropChances:[0F,0F,0F,0F],HandItems:[{},{id:stick,Count:1b,tag:{CustomModelData:6830001}}],HandDropChances:[0F,0F,0F,0F],Attributes:[{Name:generic.attackDamage,Base:0d}],Silent:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999,ShowParticles:0b}]}

summon blaze ~ ~ ~ {CustomName:'[{"translate":"entity.ttb.flame"},{"translate":"text.ttb.entity.from"},{"translate":"entity.ttb.mage"}]',DeathLootTable:"minecraft:empty",Tags:["ttb_entity","ttb_flame","ttb_vehicle","ttb_mage_spread"],Passengers:[{id:area_effect_cloud,CustomName:'[{"translate":"entity.ttb.flame"},{"translate":"text.ttb.entity.from"},{"translate":"entity.ttb.mage"}]',Duration:160s,Tags:["ttb_entity","ttb_flame","ttb_passenger"]}],Health:2f,Attributes:[{Name:generic.maxHealth,Base:2d}]}
spreadplayers ~ ~ 0 6 false @e[type=blaze,tag=ttb_mage_spread]
data modify entity @e[type=blaze,tag=ttb_mage_spread,sort=nearest,limit=1] Pos[1] set from entity @s Pos[1]
tag @e[type=blaze] remove ttb_mage_spread
