scoreboard players set @s place_gateway 0

execute if dimension the_end run return run tellraw @s {"text": "You can't use this command in The End.", "color": "red"}
execute as @s[nbt=!{Inventory:[{id:"minecraft:dragon_breath"}]}] run return run tellraw @s {"text": "This cost 1 Dragon's Breath.", "color": "red"}
execute unless block ~ ~ ~ #end_gateway_placer:air run return run tellraw @s {"text": "You can only place this in air.", "color": "red"}

setblock ~ ~ ~ minecraft:end_gateway{Age:200L}
clear @s dragon_breath 1
