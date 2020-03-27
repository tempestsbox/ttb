#called by entity/tick

#hurt
execute if entity @s[tag=ttb_hurt,nbt={HurtTime:9s}] run function ttb:entity/function/sound_events/check/hurt

#ambient
execute if predicate ttb:entity/function/sound_events/ambient/random_chance run function ttb:entity/function/sound_events/check/ambient
