# Silence
execute as @s[nbt={Item:{id:"minecraft:name_tag"}}] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run function silence_nearby_mobs:item_frame_with_name_tag
