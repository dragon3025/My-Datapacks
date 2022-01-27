schedule function silence_nearby_mobs:second 1s


execute as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:name_tag",tag:{display:{Name:'{"text":"silence"}'}}}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=!item_frame,distance=..1,nbt=!{CustomName:"{\"text\":\"silenced\"}",Silent:1b}] run data merge entity @s {CustomName:"{\"text\":\"silenced\"}",Silent:1b}

execute as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:name_tag",tag:{display:{Name:'{"text":"silence_big"}'}}}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=!item_frame,distance=..8,nbt=!{CustomName:"{\"text\":\"silenced\"}",Silent:1b}] run data merge entity @s {CustomName:"{\"text\":\"silenced\"}",Silent:1b}

execute as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:name_tag",tag:{display:{Name:'{"text":"unsilence"}'}}}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=!item_frame,distance=..1,nbt={CustomName:"{\"text\":\"silenced\"}",Silent:1b}] run data merge entity @s {Silent:0b, CustomName:""}

execute as @e[type=minecraft:item_frame,nbt={Item:{id:"minecraft:name_tag",tag:{display:{Name:'{"text":"unsilence_big"}'}}}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=!item_frame,distance=..8,nbt={CustomName:"{\"text\":\"silenced\"}",Silent:1b}] run data merge entity @s {Silent:0b, CustomName:""}
