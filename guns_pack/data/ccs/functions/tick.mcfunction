function ccs:ar_tick
function ccs:ak_tick
function ccs:barel_tick


execute as @a[nbt={SelectedItem:{id:"minecraft:snowball",tag:{grenade:1b}}},scores={grenade_out=1..}] at @s run tag @e[type=snowball,sort=nearest,limit=1] add primed_nade

execute as @e[tag=primed_nade] at @s unless block ~ ~-1 ~ air run effect give @e[distance=..5] instant_damage 1 1 true 
execute as @e[tag=primed_nade] at @s unless block ~ ~-1 ~ air run particle minecraft:explosion ~ ~ ~
execute as @e[tag=primed_nade] at @s unless block ~ ~-1 ~ air run playsound minecraft:entity.generic.explode player @s