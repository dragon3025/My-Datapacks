schedule function boats_remove_sit:tick 1t

execute as @a on vehicle on passengers if entity @s[type=#boats_remove_sit:following_mobs, nbt={Sitting:1b}] run data modify entity @s Sitting set value 0b
