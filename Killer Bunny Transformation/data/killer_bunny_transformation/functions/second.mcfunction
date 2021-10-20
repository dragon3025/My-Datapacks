schedule function killer_bunny_transformation:second 1s

execute as @e[type=rabbit, name="The Killer Bunny", nbt=!{RabbitType:99}, tag=!killer_bunny_transform] at @s run function killer_bunny_transformation:transform
