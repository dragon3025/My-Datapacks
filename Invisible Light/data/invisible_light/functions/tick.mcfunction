schedule function invisible_light:tick 1t

# Reveal light

## Using Trigger reveals for 1 minute
scoreboard players enable @a reveal_invisible_lights
execute as @a[scores={reveal_invisible_lights=1..}] at @s run scoreboard players set @e[tag=invisible_light] invisible_light_reveal_time 1200
scoreboard players set @a reveal_invisible_lights 0

## Holding 'i_light' Diamond reveals for 10 seconds
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond", tag: {display: {Name: '{"text":"i_light"}'}}}}] at @s run scoreboard players set @e[tag=invisible_light] invisible_light_reveal_time 200
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:diamond", tag: {display: {Name: '{"text":"i_light"}'}}}]}] at @s run scoreboard players set @e[tag=invisible_light] invisible_light_reveal_time 200

## Holding Light reveals for 10 seconds
execute as @a[nbt={SelectedItem:{id:"minecraft:light"}}] at @s run scoreboard players set @e[tag=invisible_light] invisible_light_reveal_time 200
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:light"}]}] at @s run scoreboard players set @e[tag=invisible_light] invisible_light_reveal_time 200

# Prevent certain mobs from despawning
execute as @e[type=#minecraft:raiders] store result score @s raider_wave_number run data get entity @s Wave 1
tag @e[scores={raider_wave_num=1..}] add safe_from_lightblock
tag @e[type=#invisible_light:hostile, nbt={PersistenceRequired:true}] add safe_from_lightblock

# Create Light with 'i_light' Diamond or Light in glow item frame.
execute as @e[type=glow_item_frame, nbt={Item:{id:"minecraft:diamond", tag: {display: {Name: '{"text":"i_light"}'}}}}] at @s align xyz unless entity @e[tag=invisible_light, dx=0, dy=0, dz=0] run function invisible_light:create_light

# Invisible Light
execute as @e[tag=invisible_light] at @s if block ~ ~ ~ light run function invisible_light:invisible_light
execute as @e[tag=invisible_light] at @s unless block ~ ~ ~ light run summon item ~ ~ ~ {Item:{id:"minecraft:diamond", Count:1b, tag: {RepairCost: 0, display: {Name: '{"text":"i_light"}'}}}}
execute as @e[tag=invisible_light] at @s unless block ~ ~ ~ light run summon item ~ ~ ~ {Item:{id:"minecraft:glow_item_frame", Count:1b}}
execute as @e[tag=invisible_light] at @s unless block ~ ~ ~ light run kill @s

tag @e[type=#invisible_light:hostile] add safe_from_lightblock
