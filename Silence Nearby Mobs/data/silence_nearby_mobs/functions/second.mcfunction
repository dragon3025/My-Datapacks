schedule function silence_nearby_mobs:second 1s

execute as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:name_tag", tag:{display:{Name:'{"text":"silence_me"}'}}}}] at @s run execute as @e[type=!item_frame,distance=..1,nbt=!{CustomName:"{\"text\":\"silenced\"}",Silent:1b}] run data merge entity @s {CustomName:"{\"text\":\"silenced\"}",Silent:1b}

execute as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:name_tag", tag:{display:{Name:'{"text":"un_silence_me"}'}}}}] at @s run execute as @e[type=!item_frame,distance=..1,nbt={CustomName:"{\"text\":\"silenced\"}",Silent:1b}] run data merge entity @s {CustomName:"{\"text\":\"un_silenced\"}"}

execute as @e[nbt={CustomName:"{\"text\":\"un_silenced\"}",Silent:1b}] run function silence_nearby_mobs:un_silence
