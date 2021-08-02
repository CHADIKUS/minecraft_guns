tellraw @a {"text": "cool bug fact's!","color": "#b3ffe0"}
tellraw @a {"text": "one day you will have to answer for your actions\nand god\nmay not be so merciful ","color": "#a61c00"}

#ak custom model data 657234
#ar custom model data 657235
#nade' custom model data 657236
#give @p stick{display:{Name:'{"text":"magazine","color":"white","bold":true,"italic":false}',Lore:['{"text":"used on all guns but the bazooka","color":"dark_purple","bold":true,"italic":false}']},CustomModelData:657235,Enchantments:[{id:"minecraft:soul_speed",lvl:1s}]} 1

scoreboard objectives add ak_shot minecraft.used:minecraft.crossbow
scoreboard players set @a ak_shot 1

scoreboard objectives add ar_shot minecraft.used:minecraft.crossbow
scoreboard players set @a ar_shot 1

scoreboard objectives add grenade_out minecraft.used:minecraft.snowball
scoreboard players set @a grenade_out 1

#give @p snowball{display:{Name:'{"text":"grenade","color":"white","bold":true,"italic":true}',Lore:['{"text":"great against bases and people :]","color":"dark_purple"}']},HideFlags:1,CustomModelData:657236,grenade:1b} 1

scoreboard objectives add barel_shot minecraft.used:minecraft.crossbow
scoreboard players set @a barel_shot 1

scoreboard objectives add tnt_activated minecraft.used:minecraft.carrot_on_a_stick

#this is because crafting only works once you do the command first some reason crafting only works 

#give players the stuff
function ccs:give_ak
function ccs:give_ar
function ccs:give_barel
function ccs:give_nade
function ccs:give_remote

#take the stuff
clear @a minecraft:crossbow{AK_47:1b}
clear @a minecraft:crossbow{AR_15:1b}
clear @a minecraft:crossbow{barel:1b}
clear @a minecraft:snowball{grenade:1b}
clear @a minecraft:carrot_on_a_stick{remote_tnt:1b}