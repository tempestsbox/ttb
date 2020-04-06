#runs on load
#@s - invalid
#called by #load

#notify load
tellraw @a [{"translate":"pack.ttb.name","color":"aqua","clickEvent":{"action":"open_url","value":"https://tempestsbox.github.io"}},{"text":": ","color":"aqua"},{"translate":"text.ttb.load","color":"dark_aqua"}]
execute unless entity @a[limit=1] run say TTB: Loaded

#build check
# function ttb:build/check

#initialise data
scoreboard objectives add ttb_data dummy

scoreboard objectives add ttb_slot_count dummy
scoreboard objectives add ttb_slot_size dummy
scoreboard objectives add ttb_van_crft_cnt dummy

scoreboard objectives add ttb_model_cmd dummy

scoreboard objectives add ttb_raycast_iter dummy
scoreboard objectives add ttb_blight_frze dummy

scoreboard objectives add ttb_gamerules dummy
scoreboard players set #100 ttb_gamerules 100
execute unless score entityRemovalDebugMessage ttb_gamerules matches 0..1 run scoreboard players set entityRemovalDebugMessage ttb_gamerules 0

scoreboard objectives add ttb_staff_dur dummy
scoreboard players set $carrot_on_a_stick_dur ttb_staff_dur 25
scoreboard objectives add ttb_staff_durmax dummy
scoreboard objectives add ttb_ether_specmo dummy

scoreboard objectives add ttb_place_iframe minecraft.used:minecraft.item_frame
scoreboard objectives add ttb_use_crtstck minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ttb_relic_damage minecraft.custom:minecraft.damage_dealt
scoreboard players set $threshold ttb_relic_damage 500

#trigger clocks
function ttb:clock16t
function ttb:clock2s
