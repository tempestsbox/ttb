#runs on load
#@s - invalid
#called by #load

#notify load
tellraw @a [{"translate":"pack.ttb.name","color":"aqua","clickEvent":{"action":"open_url","value":"https://tempestsbox.github.io"}},{"text":": ","color":"aqua"},{"translate":"text.ttb.load","color":"dark_aqua"}]
execute unless entity @a[limit=1] run say TTB: Loaded

#build check
# function ttb:build/check

#initialise data
scoreboard objectives add ttb_place_iframe minecraft.used:minecraft.item_frame
scoreboard objectives add ttb_use_crtstck minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add ttb_relic_damage minecraft.custom:minecraft.damage_dealt
scoreboard players set $threshold ttb_relic_damage 500

scoreboard objectives add ttb_slot_count dummy
scoreboard objectives add ttb_slot_size dummy
scoreboard objectives add ttb_van_crft_cnt dummy

scoreboard objectives add ttb_raycast_iter dummy

scoreboard objectives add ttb_mana_repulsi dummy
scoreboard players set $use ttb_mana_repulsi 7
scoreboard players set $recharge_bright_relic ttb_mana_repulsi 5
scoreboard objectives add ttb_mana_relativ dummy
scoreboard players set $use ttb_mana_relativ 5
scoreboard players set $recharge_bright_relic ttb_mana_relativ 5
scoreboard objectives add ttb_mana_extract dummy
scoreboard players set $use ttb_mana_extract 3
scoreboard players set $recharge_bright_relic ttb_mana_extract 7
scoreboard objectives add ttb_mana_refrige dummy
scoreboard players set $use ttb_mana_refrige 4
scoreboard players set $recharge_bright_relic ttb_mana_refrige 7
scoreboard objectives add ttb_mana_infalli dummy
scoreboard players set $use ttb_mana_infalli 9
scoreboard players set $recharge_bright_relic ttb_mana_infalli 5
scoreboard objectives add ttb_mana_shatter dummy
scoreboard players set $use ttb_mana_shatter 12
scoreboard players set $recharge_bright_relic ttb_mana_shatter 3
scoreboard objectives add ttb_mana_tempora dummy
scoreboard players set $use ttb_mana_tempora 29
scoreboard players set $recharge_bright_relic ttb_mana_tempora 3
scoreboard objectives add ttb_mana_captiv dummy
scoreboard players set $use ttb_mana_captiv 18
scoreboard players set $recharge_bright_relic ttb_mana_captiv 5
scoreboard objectives add ttb_mana_ether dummy
scoreboard players set $use ttb_mana_ether 27
scoreboard players set $recharge_bright_relic ttb_mana_ether 1
scoreboard objectives add ttb_mana_harvest dummy
scoreboard players set $use ttb_mana_harvest 92
scoreboard players set $recharge_bright_relic ttb_mana_harvest 1
scoreboard objectives add ttb_mana_saturat dummy
scoreboard players set $use ttb_mana_saturat 12
scoreboard players set $recharge_bright_relic ttb_mana_saturat 1
scoreboard objectives add ttb_mana_mage dummy
scoreboard players set $use ttb_mana_mage 6
scoreboard players set $recharge_bright_relic ttb_mana_mage 6
scoreboard objectives add ttb_mana_blight dummy
scoreboard players set $use ttb_mana_blight 6
scoreboard players set $recharge_bright_relic ttb_mana_blight 6
scoreboard objectives add ttb_mana_skitter dummy
scoreboard players set $use ttb_mana_skitter 6
scoreboard players set $recharge_bright_relic ttb_mana_skitter 6
scoreboard objectives add ttb_mana_netherk dummy
scoreboard players set $use ttb_mana_netherk 6
scoreboard players set $recharge_bright_relic ttb_mana_netherk 6
scoreboard objectives add ttb_mana_spirit dummy
scoreboard players set $use ttb_mana_spirit 1
scoreboard players set $recharge_bright_relic ttb_mana_spirit 2

scoreboard objectives add ttb_ether_specmo dummy

#trigger clocks
function ttb:clock16
