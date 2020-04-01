#updates durability - called in various places

#pre
forceload add ~ ~

#get copy
setblock ~ ~-1 ~ black_shulker_box{Items:[{Slot:0b,id:barrier,Count:1b,tag:{CustomModelData:6830001}}]}
data modify block ~ ~-1 ~ Items[{Slot:0b}] set from entity @s SelectedItem

#update copy
## custom durability
### item data
execute store result score @s ttb_staff_durmax run data get entity @s SelectedItem.tag.ttb.staff.max_durability
execute if score @s ttb_staff_dur > @s ttb_staff_durmax run scoreboard players operation @s ttb_staff_dur = @s ttb_staff_durmax
scoreboard players set @s[scores={ttb_staff_dur=..-1}] ttb_staff_dur 0
execute store result block ~ ~-1 ~ Items[{Slot:0b}].tag.ttb.staff.durability int 1 run scoreboard players get @s ttb_staff_dur
### item lore
setblock ~ ~ ~ oak_sign{Text1:'[{"text":"","italic":false,"color":"gray"},[{"translate":"item.durability","with":[{"nbt":"Items[{Slot:0b}].tag.ttb.staff.durability","block":"~ ~-1 ~"},{"nbt":"Items[{Slot:0b}].tag.ttb.staff.max_durability","block":"~ ~-1 ~"}]}]]'}
data modify block ~ ~-1 ~ Items[{Slot:0b}].tag.display.Lore[0] set from block ~ ~ ~ Text1
setblock ~ ~ ~ air
# vanilla damage value
scoreboard players operation @s ttb_staff_durmax -= @s ttb_staff_dur
scoreboard players operation @s ttb_staff_durmax *= #100 ttb_gamerules
execute store result score @s ttb_staff_dur run data get entity @s SelectedItem.tag.ttb.staff.max_durability
scoreboard players operation @s ttb_staff_durmax /= @s ttb_staff_dur
scoreboard players operation @s ttb_staff_durmax *= $carrot_on_a_stick_dur ttb_staff_dur
scoreboard players operation @s ttb_staff_durmax /= #100 ttb_gamerules
execute store result block ~ ~-1 ~ Items[{Slot:0b}].tag.Damage int 1 run scoreboard players get @s ttb_staff_durmax

#debug
tellraw @s[tag=ttb_debug] ["Staff durability: ",[{"nbt":"SelectedItem.tag.ttb.staff.durability","entity":"@s"},"/",{"nbt":"SelectedItem.tag.ttb.staff.max_durability","entity":"@s"}]]

#post
loot replace entity @s weapon.mainhand 1 mine ~ ~-1 ~ air{ttb:{shulker_box_loot:{drop_contents:1b}}}
setblock ~ ~-1 ~ air
forceload remove ~ ~
