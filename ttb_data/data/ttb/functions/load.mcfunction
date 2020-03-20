#runs on load
#@s - invalid
#called by #load

#notify load
tellraw @a [{"translate":"pack.ttb.name","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/tempestsbox/ttb/releases"}},{"text":": ","color":"aqua"},{"translate":"text.ttb.load","color":"dark_aqua"}]
execute unless entity @a[limit=1] run say TTB: Loaded

#build check
# function ttb:build/check

#initialise data
scoreboard objectives add ttb_place_iframe minecraft.used:minecraft.item_frame
scoreboard objectives add ttb_use_crtstck minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add ttb_slot_count dummy
scoreboard objectives add ttb_slot_size dummy
scoreboard objectives add ttb_van_crft_cnt dummy

#trigger clocks
function ttb:clock16
