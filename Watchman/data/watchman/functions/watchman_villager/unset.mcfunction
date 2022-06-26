tag @s remove watchman
scoreboard players reset @s watchman_cooldown
scoreboard players reset @s watchman_search

execute if entity @s[tag=admire_goat_horn] run summon item ~ ~ ~ {Item:{id:"minecraft:goat_horn", tag:{instrument:"minecraft:admire_goat_horn"}}}
execute if entity @s[tag=call_goat_horn] run summon item ~ ~ ~ {Item:{id:"minecraft:goat_horn", tag:{instrument:"minecraft:call_goat_horn"}}}
execute if entity @s[tag=dream_goat_horn] run summon item ~ ~ ~ {Item:{id:"minecraft:goat_horn", tag:{instrument:"minecraft:dream_goat_horn"}}}
execute if entity @s[tag=feel_goat_horn] run summon item ~ ~ ~ {Item:{id:"minecraft:goat_horn", tag:{instrument:"minecraft:feel_goat_horn"}}}
execute if entity @s[tag=ponder_goat_horn] run summon item ~ ~ ~ {Item:{id:"minecraft:goat_horn", tag:{instrument:"minecraft:ponder_goat_horn"}}}
execute if entity @s[tag=seek_goat_horn] run summon item ~ ~ ~ {Item:{id:"minecraft:goat_horn", tag:{instrument:"minecraft:seek_goat_horn"}}}
execute if entity @s[tag=sing_goat_horn] run summon item ~ ~ ~ {Item:{id:"minecraft:goat_horn", tag:{instrument:"minecraft:sing_goat_horn"}}}
execute if entity @s[tag=yearn_goat_horn] run summon item ~ ~ ~ {Item:{id:"minecraft:goat_horn", tag:{instrument:"minecraft:yearn_goat_horn"}}}

tag @s remove admire_goat_horn
tag @s remove call_goat_horn
tag @s remove dream_goat_horn
tag @s remove feel_goat_horn
tag @s remove ponder_goat_horn
tag @s remove seek_goat_horn
tag @s remove sing_goat_horn
tag @s remove yearn_goat_horn
