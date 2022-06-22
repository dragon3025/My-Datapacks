execute as @s[predicate=end_gateway_placer:the_end] run tellraw @s {"text": "You can't use this command in The End.", "color": "red"}
execute as @s[predicate=end_gateway_placer:the_end] run tag @s add cant_place_gateway
execute as @s[nbt=!{Inventory:[{id:"minecraft:dragon_breath"}]}] run tellraw @s {"text": "This cost 1 Dragon's Breath.", "color": "red"}
execute as @s[nbt=!{Inventory:[{id:"minecraft:dragon_breath"}]}] run tag @s add cant_place_gateway
execute unless block ~ ~ ~ #end_gateway_placer:air run tellraw @s {"text": "You can only place this in air.", "color": "red"}
execute unless block ~ ~ ~ #end_gateway_placer:air run tag @s add cant_place_gateway


execute as @s[tag=!cant_place_gateway] run setblock ~ ~ ~ minecraft:end_gateway{Age:200L}
execute as @s[tag=!cant_place_gateway] run clear @s dragon_breath 1

tag @s remove cant_place_gateway

scoreboard players set @s place_gateway 0
