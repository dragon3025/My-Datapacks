schedule function invisible_light:tick 1t

scoreboard players enable @a reveal_invisible_lights

execute as @a[scores={reveal_invisible_lights=1..}] at @s run scoreboard players set @e[tag=invisible_light] invisible_light_reveal_time 200
execute as @a[nbt={SelectedItem:{id:"minecraft:light"}}] at @s run scoreboard players set @e[tag=invisible_light] invisible_light_reveal_time 200
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:light"}]}] at @s run scoreboard players set @e[tag=invisible_light] invisible_light_reveal_time 200
scoreboard players set @a reveal_invisible_lights 0

# Prevent certain mobs from despawning
execute as @e[type=#minecraft:raiders] store result score @s raider_wave_number run data get entity @s Wave 1
tag @e[scores={raider_wave_num=1..}] add safe_from_lightblock
tag @e[type=#invisible_light:hostile, nbt={PersistenceRequired:true}] add safe_from_lightblock

execute as @e[type=glow_item_frame, nbt={Item:{id:"minecraft:diamond", tag: {display: {Name: '{"text":"i_light"}'}}}}] at @s run function invisible_light:create_light

execute as @e[tag=invisible_light] at @s if block ~ ~ ~ light run function invisible_light:invisible_light
execute as @e[tag=invisible_light] at @s unless block ~ ~ ~ light run summon item ~ ~ ~ {Item:{id:"minecraft:diamond"}}
execute as @e[tag=invisible_light] at @s unless block ~ ~ ~ light run kill @s

tag @e[type=#invisible_light:hostile] add safe_from_lightblock
