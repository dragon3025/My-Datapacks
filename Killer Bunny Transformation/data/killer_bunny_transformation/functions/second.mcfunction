schedule function killer_bunny_transformation:second 1s

# Turn Endermites into Killer Bunnies by hitting them with Rabbit's Foot
#execute as @a[advancements={killer_bunny_transformation:player_hurt_endermite=true}, nbt={SelectedItem:{id:"minecraft:rabbit_foot"}}] at @s as @e[type=minecraft:endermite, nbt={HurtTime:10s}, limit=1, sort=nearest] at @s run function killer_bunny_transformation:transform
#execute as @a[advancements={killer_bunny_transformation:player_hurt_endermite=true}] run advancement revoke @s only killer_bunny_transformation:player_hurt_endermite

execute as @e[type=rabbit, name="The Killer Bunny", nbt=!{RabbitType:99}, tag=!killer_bunny_transform] at @s run function killer_bunny_transformation:transform
