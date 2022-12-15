schedule function no_death_loot_despawn:tick 1t

# No Despawning Death Items
## Set Items as Death Items
execute as @a[scores={died=1..}] at @s run tag @e[type=item,distance=..2] add death_item
## Setting the age to -32768 will prevent it from counting upwards
execute as @a[scores={died=1..}] at @s as @e[type=item, distance=..2] at @s run data merge entity @s {Age:-32768}
scoreboard players reset @a died
