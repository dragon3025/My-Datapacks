schedule function zombify_horse:tick 1t

# Transform a Newly Tamed Horse to Zombie Horse by hitting it with Rotten Flesh
execute as @a[advancements={zombify_horse:player_hurt_horse=true}, nbt={SelectedItem:{id:"minecraft:rotten_flesh"}}] at @s as @e[type=minecraft:horse, nbt={HurtTime:10s}, limit=1, sort=nearest] if entity @s[scores={zombify_horse_seconds_tamed=..60}] at @s run function zombify_horse:transform
execute as @a[advancements={zombify_horse:player_hurt_horse=true}] run advancement revoke @s only zombify_horse:player_hurt_horse
