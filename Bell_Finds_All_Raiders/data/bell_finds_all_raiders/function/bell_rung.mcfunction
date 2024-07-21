execute as @e[type=#minecraft:raiders] store result score @s temp run data get entity @s Wave 1
effect give @e[scores={temp=1..}] minecraft:glowing 3
