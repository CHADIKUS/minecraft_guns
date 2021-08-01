
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{AR_15:1b}}}] at @s if entity @p[nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] run execute as @a[scores={ar_shot=1..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{AR_15:1b}}}] at @s run tag @e[type=arrow,sort=nearest,limit=1] add boom
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{AR_15:1b}}}] at @s if entity @p[nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] run execute as @a[scores={ar_shot=2}] run clear @p iron_nugget 1
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{AR_15:1b}}}] at @s if entity @p[nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] run execute as @a[scores={ar_shot=1}] run scoreboard players set @p ar_shot 0

execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{AR_15:1b}}}] at @s unless entity @p[nbt={Inventory:[{id:"minecraft:iron_nugget"}]}] run execute as @a[scores={ar_shot=1..},nbt={SelectedItem:{id:"minecraft:crossbow",tag:{AR_15:1b}}}] at @s run tag @e[type=arrow,sort=nearest,limit=1] add blank

#execute as @e[tag=boom,nbt={inGround:1b}] at @s run summon tnt ~ ~ ~
#execute as @e[tag=boom,nbt={inGround:1b}] at @s run kill @s
execute as @e[tag=blank] at @s run kill @s
execute as @e[tag=boom] at @p run scoreboard players set @p ar_shot 1
execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{AR_15:1b}}}] at @s unless entity @p[nbt={Inventory:[{id:"minecraft:arrow"}]}] run give @s arrow
