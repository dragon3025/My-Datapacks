schedule function unsign_book:tick 1t

execute as @a[scores={unsign_book=1..}] at @s run function unsign_book:trigger

scoreboard players enable @a unsign_book
