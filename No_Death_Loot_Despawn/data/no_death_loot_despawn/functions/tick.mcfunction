schedule function no_death_loot_despawn:tick 1t

# No Despawning Death Items
## Set Items as Death Items
execute as @a[scores={died=1..}] at @s run tag @e[type=item,distance=..2] add death_item
scoreboard players reset @a died

## Prevent Death Items from Despawning
execute as @e[type=item, tag=death_item] run function no_death_loot_despawn:death_item
