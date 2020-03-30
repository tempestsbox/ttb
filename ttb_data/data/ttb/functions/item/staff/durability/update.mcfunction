#updates durability - called in various places

#get copy
summon item ~ ~ ~ {Tags:["ttb_entity","ttb_staff_durability_modification"],Item:{id:barrier,Count:1b,tag:{CustomModelData:6830001}}}
data modify entity @e[type=item,tag=ttb_staff_durability_modification,sort=nearest,limit=1] Item set from entity @s SelectedItem

#update copy
## custom durability
### item data
execute store result score @s ttb_staff_durmax run data get entity @s SelectedItem.tag.ttb.staff.max_durability
execute if score @s ttb_staff_dur > @s ttb_staff_durmax run scoreboard players operation @s ttb_staff_dur = @s ttb_staff_durmax
scoreboard players set @s[scores={ttb_staff_dur=..-1}] ttb_staff_dur 0
execute store result entity @e[type=item,tag=ttb_staff_durability_modification,sort=nearest,limit=1] Item.tag.ttb.staff.durability int 1 run scoreboard players get @s ttb_staff_dur
### item lore
forceload add 29999984 29999984
setblock 29999984 255 29999984 oak_sign{Text1:'[{"text":"","italic":false,"color":"gray"},[{"translate":"item.durability","with":[{"nbt":"Item.tag.ttb.staff.durability","entity":"@e[type=item,tag=ttb_staff_durability_modification,sort=nearest,limit=1]"},{"nbt":"Item.tag.ttb.staff.max_durability","entity":"@e[type=item,tag=ttb_staff_durability_modification,sort=nearest,limit=1]"}]}]]'}
data modify entity @e[type=item,tag=ttb_staff_durability_modification,sort=nearest,limit=1] Item.tag.display.Lore[0] set from block 29999984 255 29999984 Text1
setblock 29999984 255 29999984 air
forceload remove 29999984 29999984
# vanilla damage value
scoreboard players operation @s ttb_staff_durmax -= @s ttb_staff_dur
scoreboard players operation @s ttb_staff_durmax *= #100 ttb_gamerules
execute store result score @s ttb_staff_dur run data get entity @s SelectedItem.tag.ttb.staff.max_durability
scoreboard players operation @s ttb_staff_durmax /= @s ttb_staff_dur
scoreboard players operation @s ttb_staff_durmax *= $carrot_on_a_stick_dur ttb_staff_dur
scoreboard players operation @s ttb_staff_durmax /= #100 ttb_gamerules
execute store result entity @e[type=item,tag=ttb_staff_durability_modification,sort=nearest,limit=1] Item.tag.Damage int 1 run scoreboard players get @s ttb_staff_durmax

#debug
tellraw @s[tag=ttb_debug] ["Staff durability: ",[{"nbt":"SelectedItem.tag.ttb.staff.durability","entity":"@s"},"/",{"nbt":"SelectedItem.tag.ttb.staff.max_durability","entity":"@s"}]]

replaceitem entity @s weapon.mainhand air
