execute as @e[type=minecraft:skeleton_horse, nbt={Tame:true, CustomName: '{"text":"zombie"}'}, distance=..8] store result score @s hurt_time run data get entity @s HurtTime
tag @e[type=minecraft:skeleton_horse, nbt={Tame:true, CustomName: '{"text":"zombie"}'}, distance=..8, scores={hurt_time=10..}] add zombifyable_horse

execute anchored eyes positioned ^ ^ ^0.5 run function zombify_horse:detect_skeleton_horse/run

execute at @s run scoreboard players reset @e[type=minecraft:skeleton_horse, nbt={Tame:true, CustomName: '{"text":"zombie"}'}, distance=..8] hurt_time
tag @e[distance=..8] remove zombifyable_horse
