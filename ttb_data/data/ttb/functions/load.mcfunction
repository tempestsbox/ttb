# called by #load

# build check
# function ttb:build/check

# initialise scoreboard data
# # data
scoreboard objectives add ttb_data dummy
scoreboard players set eckspei_rod_xp_per ttb_data 75
scoreboard players set acronite_cage_potion_motion ttb_data 2
scoreboard players set carrot_on_a_stick_durability ttb_data 25
execute store result score seed ttb_data run seed
scoreboard objectives add ttb_biome dummy
scoreboard objectives add ttb_attack dummy
scoreboard objectives add ttb_age dummy
scoreboard objectives add ttb_model_cmd dummy
scoreboard objectives add ttb_model_cmd_in dummy
# # health
scoreboard objectives add ttb_health dummy
scoreboard objectives add ttb_health_max dummy
# # custom crafting
scoreboard objectives add ttb_slot_count dummy
scoreboard objectives add ttb_slot_size dummy
# # tickers
scoreboard objectives add ttb_tempite_tick dummy
scoreboard objectives add ttb_tempite_insu dummy
scoreboard objectives add ttb_raycast_iter dummy
scoreboard objectives add ttb_blight_frze dummy
# # gamerules/constants
scoreboard objectives add ttb_gamerules dummy
scoreboard players set #2 ttb_gamerules 2
scoreboard players set #64 ttb_gamerules 64
scoreboard players set #100 ttb_gamerules 100
execute unless score entityRemovalDebugMessage ttb_gamerules matches 0..1 run scoreboard players set entityRemovalDebugMessage ttb_gamerules 0
execute unless score worldGenerationWarnMessage ttb_gamerules matches 0..1 run scoreboard players set worldGenerationWarnMessage ttb_gamerules 1
execute unless score ogresDestroyBlocks ttb_gamerules matches 0..1 run scoreboard players set ogresDestroyBlocks ttb_gamerules 1
gamerule commandBlockOutput false
# # staffs
scoreboard objectives add ttb_ether_specmo dummy
# # player tracking
scoreboard objectives add ttb_place_iframe minecraft.used:minecraft.item_frame
scoreboard objectives add ttb_use_crtstck minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ttb_relic_damage minecraft.custom:minecraft.damage_dealt
scoreboard players set $threshold ttb_relic_damage 500
# # machines
scoreboard objectives add ttb_tempite_amnt dummy
scoreboard players set $amethyst ttb_tempite_amnt 1000
scoreboard players operation $max ttb_tempite_amnt = $amethyst ttb_tempite_amnt
scoreboard players operation $max ttb_tempite_amnt *= #64 ttb_gamerules
scoreboard players set $cost_tempite_stone ttb_tempite_amnt 4
scoreboard players set $cost_breaker ttb_tempite_amnt 20
scoreboard players set $cost_breaker_ascended ttb_tempite_amnt 4
scoreboard players set $cost_breaker_reduced ttb_tempite_amnt 3
scoreboard players set $cost_acronite_cage ttb_tempite_amnt 40
scoreboard players set $cost_acronite_cage_ascended ttb_tempite_amnt 5
scoreboard players set $cost_acronite_cage_reduced ttb_tempite_amnt 6
scoreboard players set $cost_eckspei_locker ttb_tempite_amnt 10
scoreboard players set $cost_eckspei_locker_ascended ttb_tempite_amnt 2
scoreboard players set $cost_eckspei_locker_reduced ttb_tempite_amnt 1
scoreboard players set $cost_alchemy_chamber ttb_tempite_amnt 40
scoreboard players set $cost_alchemy_chamber_ascended ttb_tempite_amnt 8
scoreboard players set $cost_alchemy_chamber_reduced ttb_tempite_amnt 6
scoreboard objectives add ttb_machine_rot dummy
scoreboard objectives add ttb_machine_cool dummy
scoreboard players set $tempite_stone ttb_machine_cool 20
scoreboard players set $hopper ttb_machine_cool 8
scoreboard players set $breaker ttb_machine_cool 8
scoreboard players set $acronite_cage ttb_machine_cool 8
scoreboard players set $eckspei_locker ttb_machine_cool 8
scoreboard players set $alchemy_chamber ttb_machine_cool 8
scoreboard objectives add ttb_tempite_deca dummy
scoreboard players set $max ttb_tempite_deca 32
scoreboard objectives add ttb_ascended dummy
scoreboard objectives add ttb_reduced dummy

scoreboard objectives add ttb_ecks_loc_exp dummy

# initialise teams
team add ttb_mob
team modify ttb_mob nametagVisibility never

# initialise datas
data modify storage ttb:block tempite_stone.Command set value "execute as @e[type=armor_stand,tag=ttb_tempite_stone,scores={ttb_tempite_amnt=4..},distance=...1,limit=1] run function ttb:block/tempite_stone/triggered"

data modify storage ttb:block tempest_crafter.Items set value [{Slot:0b},{Slot:1b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:10b},{Slot:14b},{Slot:15b},{Slot:17b},{Slot:18b},{Slot:19b},{Slot:23b},{Slot:24b},{Slot:25b},{Slot:26b}]
data modify storage ttb:block tempest_crafter.Items[] merge value {tag:{ttb:{gui_item:1b},display:{Name:'""'},CustomModelData:6830001},id:barrier,Count:1b}
data modify storage ttb:block tempest_crafter.Items[{Slot:1b}].tag.CustomModelData set value 6830014

data modify storage ttb:block machine.Items set value [{Slot:0b},{Slot:1b},{Slot:2b},{Slot:3b},{Slot:4b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:9b},{Slot:11b},{Slot:17b},{Slot:18b},{Slot:19b},{Slot:20b},{Slot:21b},{Slot:22b},{Slot:23b},{Slot:24b},{Slot:25b},{Slot:26b}]
data modify storage ttb:block machine.Items[] merge value {tag:{ttb:{gui_item:1b},display:{Name:'""'},CustomModelData:6830001},id:barrier,Count:1b}
data modify storage ttb:block machine.Items[{Slot:1b}].tag.CustomModelData set value 6830017

# trigger clocks
function ttb:clock2t
function ttb:clock16t
function ttb:clock2s

# notify load
tellraw @a [{"text":"","clickEvent":{"action":"open_url","value":"https://tempestsbox.github.io"}},{"translate":"text.ttb.prefix","color":"#EE82EE","with":[{"translate":"text.ttb.load","color":"#D964D5"}]}]
execute unless entity @a[limit=1] run say TTB: Loaded
