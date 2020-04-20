#called by entity/mage/player_present_effects

#audiovisuals
playsound entity.guardian.death player @a[distance=..16] ~ ~ ~ 2 0.5 1
particle block emerald_block ~ ~ ~ 1 1 1 0.01 100 normal @a
particle totem_of_undying ~ ~ ~ 1 1 1 0.01 100 normal @a

#functionality
summon vex ~ ~ ~ {PersistenceRequired:1b,CustomName:'{"translate":"text.ttb.entity.from","with":[{"translate":"entity.ttb.mage.magic_ball"},{"translate":"entity.ttb.mage"}]}',Tags:["ttb_entity","ttb_magic_ball","ttb_vehicle"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999,ShowParticles:0b}],Passengers:[{id:area_effect_cloud,CustomName:'{"translate":"text.ttb.entity.from","with":[{"translate":"entity.ttb.mage.magic_ball"},{"translate":"entity.ttb.mage"}]}',Tags:["ttb_entity","ttb_magic_ball","ttb_passenger"],Particle:witch,Radius:.1f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:100}]}
