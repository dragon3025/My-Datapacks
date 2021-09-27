schedule function horse_tame_message:second 1s

execute as @e[type=#horse_tame_message:horses, tag=!tame_message_given, nbt={Tame:true}] at @s run tellraw @p {"text": "Horse tamed", "color": "yellow"}
tag @e[type=#horse_tame_message:horses, tag=!tame_message_given, nbt={Tame:true}] add tame_message_given
