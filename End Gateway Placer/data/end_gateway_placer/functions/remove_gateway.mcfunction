execute as @s[predicate=end_gateway_placer:the_end] run tellraw @s {"text": "You can't use this command in The End.", "color": "red"}
execute as @s[predicate=!end_gateway_placer:the_end] if block ~ ~ ~ end_gateway run setblock ~ ~ ~ air
scoreboard players set @s remove_gateway 0
