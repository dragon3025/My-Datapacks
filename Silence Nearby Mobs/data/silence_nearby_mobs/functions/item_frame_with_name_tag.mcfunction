# Silence
execute as @s[nbt={Item:{tag:{display:{Name:'{"text":"silence"}'}}}}] as @e[type=#silence_nearby_mobs:noisy_mobs,distance=..1,nbt=!{CustomName:"{\"text\":\"silenced\"}",Silent:true}] run data merge entity @s {CustomName:"{\"text\":\"silenced\"}",Silent:true}

execute as @s[nbt={Item:{tag:{display:{Name:'{"text":"silence_big"}'}}}}] as @e[type=#silence_nearby_mobs:noisy_mobs,distance=..4,nbt=!{CustomName:"{\"text\":\"silenced\"}",Silent:true}] run data merge entity @s {CustomName:"{\"text\":\"silenced\"}",Silent:true}

# Unsilence
execute as @s[nbt={Item:{tag:{display:{Name:'{"text":"unsilence"}'}}}}] as @e[type=#silence_nearby_mobs:noisy_mobs,distance=..1,nbt={CustomName:"{\"text\":\"silenced\"}",Silent:true}] run data merge entity @s {Silent:false, CustomName:""}

execute as @s[nbt={Item:{tag:{display:{Name:'{"text":"unsilence_big"}'}}}}] as @e[type=#silence_nearby_mobs:noisy_mobs,distance=..4,nbt={CustomName:"{\"text\":\"silenced\"}",Silent:true}] run data merge entity @s {Silent:false, CustomName:""}
