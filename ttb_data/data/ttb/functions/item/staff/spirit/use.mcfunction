#called by item/staff/check_staff

#audiovisuals
playsound entity.zombie_villager.converted voice @a[distance=..16] ~ ~ ~ 2 2 1
playsound entity.zombie_villager.converted voice @a[distance=..16] ~ ~ ~ 2 1.8 1
playsound entity.zombie_villager.converted voice @a[distance=..16] ~ ~ ~ 2 1.6 1
particle totem_of_undying ~ ~1 ~ 2 0 2 0.01 1000 normal @a

# execute at @e[tag=purpleTome] run playsound entity.elder_guardian.curse voice @p[distance=..5] ~ ~ ~ 2 0.7 1
# execute at @e[tag=purpleTome] run playsound entity.elder_guardian.curse voice @p[distance=..5] ~ ~ ~ 2 0.8 1
# execute at @e[tag=purpleTome] run execute at @p[distance=..5] run particle explosion ~ ~ ~ 0 0 0 0.01 1 force @a

# execute at @e[name=Decree] run tellraw @a[distance=150..250] {"text":"The Decree Whispers.","color":"red"}
# execute at @e[name=Decree] run tellraw @a[distance=100..150] {"text":"The Decree Speaks.","color":"red"}
# execute at @e[name=Decree] run tellraw @a[distance=50..100] {"text":"The Decree Shouts.","color":"red"}
# execute at @e[name=Decree] run tellraw @a[distance=..50] {"text":"The Decree Screams.","color":"red"}

#functionality
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_1 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_2 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_3 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_4 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_5 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_6 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_7 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_8 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_9 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_10 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_11 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_12 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_13 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_14 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_16 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_spirit 0
# execute at @e[tag=purpleTome] run scoreboard players set @p[distance=..5] MANA_15 199

# execute at @e[name=Decree] run tellraw @a[distance=150..250] {"text":"The Decree Whispers.","color":"red"}
# execute at @e[name=Decree] run tellraw @a[distance=100..150] {"text":"The Decree Speaks.","color":"red"}
# execute at @e[name=Decree] run tellraw @a[distance=50..100] {"text":"The Decree Shouts.","color":"red"}
# execute at @e[name=Decree] run tellraw @a[distance=..50] {"text":"The Decree Screams.","color":"red"}

# scoreboard players add @e[name=macContainer,distance=..4,sort=random,limit=1] power 15

#depletion
scoreboard players operation @s[gamemode=!creative,gamemode=!spectator] ttb_mana_spirit -= $use ttb_mana_spirit
function ttb:item/staff/mana/report
