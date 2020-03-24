#called by entity/tick

#hurt
execute unless score @s ttb_snd_hlth_prv matches 0.. store result score @s ttb_snd_hlth_prv run data get entity @s Health

execute store result score @s ttb_snd_hlth run data get entity @s Health
execute if score @s ttb_snd_hlth < @s ttb_snd_hlth_prv run function ttb:entity/function/sound_events/check/hurt
scoreboard players operation @s ttb_snd_hlth_prv = @s ttb_snd_hlth

#ambient
execute if predicate ttb:entity/function/sound_events/ambient/random_chance run function ttb:entity/function/sound_events/check/ambient
