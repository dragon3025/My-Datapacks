execute as @e[type=#minecraft:raiders] store result score @s raider_wave_number run data get entity @s Wave 1
effect give @e[scores={raider_wave_number=1..}] minecraft:glowing 3
