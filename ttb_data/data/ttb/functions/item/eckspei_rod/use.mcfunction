# called by entity/player/used_item/carrot_on_a_stick

# audiovisuals
playsound entity.experience_orb.pickup player @a[distance=..16] ~ ~ ~ 1 2 1

# add experience to player
scoreboard players operation #eckspei_rod_xp_loop ttb_data = eckspei_rod_xp_per ttb_data
function ttb:item/eckspei_rod/add_experience

# update item data
execute if score #durability ttb_data matches 0 run scoreboard players set @s ttb_model_cmd 17
execute in overworld positioned 29999984 255 29999984 run function ttb:item/carrot_on_a_stick/durability/update
