execute as @s[nbt=!{Inventory:[{id:"minecraft:ender_pearl"}]}] run return run tellraw @s {text: "This cost 1 Ender Pearl.", color: "red"}
execute unless block ~ ~ ~ #replaceable run return run tellraw @s {text: "You can only place this in air or a replaceable block.", color: "red"}
execute if block ~1 ~ ~ #replaceable if block ~-1 ~ ~ #replaceable if block ~ ~1 ~ #replaceable if block ~ ~-1 ~ #replaceable if block ~ ~ ~1 #replaceable if block ~ ~ ~-1 #replaceable run return run tellraw @s {text: "You can only place this on the side of a non-replaceable block.", color: "red"}

playsound entity.player.teleport player @a ~ ~ ~
setblock ~ ~ ~ minecraft:end_gateway{Age:200L}
clear @s ender_pearl 1
