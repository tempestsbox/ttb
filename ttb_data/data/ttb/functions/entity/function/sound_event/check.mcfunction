#called by entity/tick

#hurt
execute if entity @s[nbt={HurtTime:9s}] run function ttb:entity/function/sound_event/play_hurt

#ambient
execute if predicate ttb:entity/function/sound_event/ambient/random_chance run function ttb:entity/function/sound_event/play_ambient
