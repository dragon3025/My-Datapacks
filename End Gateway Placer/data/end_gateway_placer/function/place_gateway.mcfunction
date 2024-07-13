execute as @s[advancements={minecraft:end/enter_end_gateway=false}] run return run tellraw @s {"text": "Placing requires the \"Remote Getaway\" advancement.", "color": "red"}
execute as @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl"}]}] run return run tellraw @s {"text": "This cost 1 Ender Pearl.", "color": "red"}
execute unless block ~ ~ ~ #air run return run tellraw @s {"text": "You can only place this in air.", "color": "red"}
execute if block ~1 ~ ~ #replaceable if block ~-1 ~ ~ #replaceable if block ~ ~1 ~ #replaceable if block ~ ~-1 ~ #replaceable if block ~ ~ ~1 #replaceable if block ~ ~ ~-1 #replaceable run return run tellraw @s {"text": "You can only place this on the side of another block.", "color": "red"}

setblock ~ ~ ~ minecraft:end_gateway{Age:200L}
clear @s ender_pearl 1
