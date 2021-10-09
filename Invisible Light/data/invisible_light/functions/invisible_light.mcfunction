tp @e[type=#invisible_light:hostile, tag=!safe_from_lightblock, distance=..14.5] ~ -128 ~

execute as @s[scores={invisible_light_reveal_time=1..}] at @s if predicate invisible_light:water_source run setblock ~ ~ ~ light[level=15, waterlogged=true]
execute as @s[scores={invisible_light_reveal_time=1..}] at @s unless predicate invisible_light:water_source run setblock ~ ~ ~ light[level=15]

execute unless score @s invisible_light_reveal_time matches 1.. at @s if predicate invisible_light:water_source run setblock ~ ~ ~ light[level=0, waterlogged=true]
execute unless score @s invisible_light_reveal_time matches 1.. at @s unless predicate invisible_light:water_source run setblock ~ ~ ~ light[level=0]

scoreboard players remove @s[scores={invisible_light_reveal_time=1..}] invisible_light_reveal_time 1
scoreboard players reset @s[scores={invisible_light_reveal_time=..0}] invisible_light_reveal_time
