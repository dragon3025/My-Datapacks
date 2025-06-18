schedule function easier_enchants:tick 1t

execute as @a[scores={copy_enchanted_book=1..}] at @s run function easier_enchants:used_enchanting_table

scoreboard players enable @a copy_enchanted_book
