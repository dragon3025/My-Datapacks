execute as @e[type=rabbit, name="The Killer Bunny", nbt=!{RabbitType:99}, tag=!killer_bunny_transform] at @s run function killer_bunny_transformation:transform
advancement revoke @s only killer_bunny_transformation:player_named_rabbit
