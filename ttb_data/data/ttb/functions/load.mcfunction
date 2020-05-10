#called by #load

#notify load
tellraw @a [{"translate":"pack.ttb.name","color":"aqua","clickEvent":{"action":"open_url","value":"https://tempestsbox.github.io"}},{"text":": ","color":"aqua"},{"translate":"text.ttb.load","color":"dark_aqua"}]
execute unless entity @a[limit=1] run say TTB: Loaded

#build check
# function ttb:build/check

#initialise scoreboard data
## data
scoreboard objectives add ttb_data dummy
execute store result score seed ttb_data run seed
scoreboard players set active_chunks_max ttb_data 24
scoreboard objectives add ttb_model_cmd dummy
## custom crafting
scoreboard objectives add ttb_slot_count dummy
scoreboard objectives add ttb_slot_size dummy
## tickers
scoreboard objectives add ttb_tempite_tick dummy
scoreboard objectives add ttb_tempite_insu dummy
scoreboard objectives add ttb_raycast_iter dummy
scoreboard objectives add ttb_blight_frze dummy
## gamerules/constants
scoreboard objectives add ttb_gamerules dummy
scoreboard players set #64 ttb_gamerules 64
scoreboard players set #100 ttb_gamerules 100
execute unless score entityRemovalDebugMessage ttb_gamerules matches 0..1 run scoreboard players set entityRemovalDebugMessage ttb_gamerules 0
## staffs
scoreboard objectives add ttb_staff_dur dummy
scoreboard players set $carrot_on_a_stick_dur ttb_staff_dur 25
scoreboard objectives add ttb_staff_durmax dummy
scoreboard objectives add ttb_ether_specmo dummy
scoreboard objectives add ttb_ether_gamemo dummy
## player tracking
scoreboard objectives add ttb_place_iframe minecraft.used:minecraft.item_frame
scoreboard objectives add ttb_use_crtstck minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ttb_relic_damage minecraft.custom:minecraft.damage_dealt
scoreboard players set $threshold ttb_relic_damage 500
## machines
scoreboard objectives add ttb_tempite_amnt dummy
scoreboard players set $amethyst ttb_tempite_amnt 1000
scoreboard players operation $max ttb_tempite_amnt = $amethyst ttb_tempite_amnt
scoreboard players operation $max ttb_tempite_amnt *= #64 ttb_gamerules
scoreboard players set $cost_tempite_stone ttb_tempite_amnt 4
scoreboard players set $cost_breaker ttb_tempite_amnt 20
scoreboard objectives add ttb_machine_cool dummy
scoreboard players set $tempite_stone ttb_machine_cool 20
scoreboard players set $breaker ttb_machine_cool 8
scoreboard players set $hopper ttb_machine_cool 8
scoreboard objectives add ttb_tempite_deca dummy
scoreboard players set $max ttb_tempite_deca 32
scoreboard objectives add ttb_ascended dummy
scoreboard objectives add ttb_reduced dummy
scoreboard objectives add ttb_ench_level dummy
scoreboard objectives add ttb_ench_store dummy
scoreboard objectives add ttb_ench_quarry dummy
scoreboard objectives add ttb_ench_fortune dummy
scoreboard objectives add ttb_ench_silk dummy
scoreboard objectives add ttb_ench_smelt dummy
scoreboard objectives add ttb_ench_wither dummy
scoreboard objectives add ttb_ench_power dummy

#initialise datas
data modify storage ttb:block tempite_stone.Command set value "execute as @e[type=armor_stand,tag=ttb_tempite_stone,scores={ttb_tempite_amnt=4..},distance=...1,limit=1] run function ttb:block/tempite_stone/triggered"

data modify storage ttb:block tempest_crafter.Items set value [{Slot:0b},{Slot:1b},{Slot:5b},{Slot:6b},{Slot:7b},{Slot:8b},{Slot:10b},{Slot:14b},{Slot:15b},{Slot:17b},{Slot:18b},{Slot:19b},{Slot:23b},{Slot:24b},{Slot:25b},{Slot:26b}]
data modify storage ttb:block tempest_crafter.Items[] merge value {tag:{ttb:{gui_item:1b},display:{Name:'""'},CustomModelData:6830001},id:barrier,Count:1b}
data modify storage ttb:block tempest_crafter.Items[{Slot:1b}].tag.CustomModelData set value 6830012

data modify storage ttb:block machine.Items set value [{Slot:0b},{Slot:1b},{Slot:2b},{Slot:5b},{Slot:8b},{Slot:9b},{Slot:11b},{Slot:14b},{Slot:17b},{Slot:18b},{Slot:19b},{Slot:20b},{Slot:23b},{Slot:26b}]
data modify storage ttb:block machine.Items[] merge value {tag:{ttb:{gui_item:1b},display:{Name:'""'},CustomModelData:6830001},id:barrier,Count:1b}
data modify storage ttb:block machine.Items[{Slot:1b}].tag.CustomModelData set value 6830015

data modify storage ttb:world structure.orientation set value [{id:""}]
data modify storage ttb:world structure.dungeon.get_room_result set value [{}]

#trigger clocks
function ttb:clock16t
function ttb:clock2s
