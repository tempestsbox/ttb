#called by #load

#notify load
tellraw @a [{"translate":"pack.ttb.name","color":"aqua","clickEvent":{"action":"open_url","value":"https://tempestsbox.github.io"}},{"text":": ","color":"aqua"},{"translate":"text.ttb.load","color":"dark_aqua"}]
execute unless entity @a[limit=1] run say TTB: Loaded

#build check
# function ttb:build/check

#initialise scoreboard data
## data
scoreboard objectives add ttb_data dummy
scoreboard objectives add ttb_biome dummy
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

#initialise datas
data modify storage ttb:block tempite_stone.Command set value "execute as @e[type=armor_stand,tag=ttb_tempite_stone,distance=...1,sort=nearest,limit=1] run function ttb:block/tempite_stone/triggered"
data modify storage ttb:block tempest_crafter.Items set value [{Slot:0b,id:barrier,Count:1,tag:{CustomModelData:6830012}},{Slot:1b,id:barrier,Count:1},{Slot:5b,id:barrier,Count:1},{Slot:6b,id:barrier,Count:1},{Slot:7b,id:barrier,Count:1},{Slot:8b,id:barrier,Count:1},{Slot:10b,id:barrier,Count:1},{Slot:14b,id:barrier,Count:1},{Slot:15b,id:barrier,Count:1},{Slot:17b,id:barrier,Count:1},{Slot:18b,id:barrier,Count:1},{Slot:19b,id:barrier,Count:1},{Slot:23b,id:barrier,Count:1},{Slot:24b,id:barrier,Count:1},{Slot:25b,id:barrier,Count:1},{Slot:26b,id:barrier,Count:1}]
data modify storage ttb:block tempest_crafter.Items[{}].tag.ttb.gui_item set value 1b
data modify storage ttb:block tempest_crafter.Items[{}].tag.display.Name set value '""'
data modify storage ttb:block tempest_crafter.Items[{}].tag.CustomModelData set value 6830001
data modify storage ttb:block tempest_crafter.Items[{Slot:0b}].tag.CustomModelData set value 6830012

#trigger clocks
function ttb:clock16t
function ttb:clock2s
