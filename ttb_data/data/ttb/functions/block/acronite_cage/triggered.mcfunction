# called by block/acronite_cage/cost/check

playsound entity.splash_potion.throw block @a[distance=..16] ~ ~ ~ 1 1 1

# create lingering potion
execute positioned ~ ~-.25 ~ run function ttb:block/acronite_cage/summon_potion

# effects
execute unless entity @s[tag=ttb_machine_mysterious] run data modify entity @e[type=potion,tag=ttb_acronite_cage_potion,distance=..2,sort=nearest,limit=1] Item set value {id:'lingering_potion',Count:1b,tag:{Potion:'strong_poison'}}
execute if entity @s[tag=ttb_machine_mysterious] run data modify entity @e[type=potion,tag=ttb_acronite_cage_potion,distance=..2,sort=nearest,limit=1] Item set value {id:'lingering_potion',Count:1b,tag:{CustomPotionEffects:[{Id:20b,Duration:110,Amplifier:1b}],CustomPotionColor:0}}

# ascension
scoreboard players add @s ttb_ascended 1
scoreboard players operation @s ttb_ascended *= acronite_cage_potion_motion ttb_data

execute if score @s ttb_machine_rot matches 0 store result entity @e[type=potion,tag=ttb_acronite_cage_potion,distance=..2,sort=nearest,limit=1] Motion[2] double .1 run scoreboard players get @s ttb_ascended
execute if score @s ttb_machine_rot matches 90 store result entity @e[type=potion,tag=ttb_acronite_cage_potion,distance=..2,sort=nearest,limit=1] Motion[0] double -.1 run scoreboard players get @s ttb_ascended
execute if score @s ttb_machine_rot matches 180 store result entity @e[type=potion,tag=ttb_acronite_cage_potion,distance=..2,sort=nearest,limit=1] Motion[2] double -.1 run scoreboard players get @s ttb_ascended
execute if score @s ttb_machine_rot matches -90 store result entity @e[type=potion,tag=ttb_acronite_cage_potion,distance=..2,sort=nearest,limit=1] Motion[0] double .1 run scoreboard players get @s ttb_ascended

# reset scores
scoreboard players reset @s ttb_ascended
scoreboard players reset @s ttb_reduced
# trigger cooldown
scoreboard players operation @s ttb_machine_cool = $acronite_cage ttb_machine_cool
