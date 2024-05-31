scoreboard players set @s remove_gateway 0

execute if dimension the_end run return run tellraw @s {"text": "You can't use this command in The End.", "color": "red"}
execute if block ~ ~ ~ end_gateway run setblock ~ ~ ~ air
