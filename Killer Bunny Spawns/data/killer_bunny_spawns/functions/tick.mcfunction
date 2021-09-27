schedule function killer_bunny_spawns:second 1t

# Turn Endermites into Killer Bunnies by hitting them with Rabbit's Foot
execute as @a[advancements={killer_bunny_spawns:player_hurt_endermite=true}, nbt={SelectedItem:{id:"minecraft:rabbit_foot"}}] at @s as @e[type=minecraft:endermite, nbt={HurtTime:10s}, limit=1, sort=nearest] run function killer_bunny_spawns:transform
execute as @a[advancements={killer_bunny_spawns:player_hurt_endermite=true}] run advancement revoke @s only killer_bunny_spawns:player_hurt_endermite
