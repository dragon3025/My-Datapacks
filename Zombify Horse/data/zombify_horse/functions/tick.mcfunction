schedule function zombify_horse:tick 1t

# Transform a Newly Tamed Horse to Zombie Horse by hitting it with Rotten Flesh
execute as @a[advancements={zombify_horse:player_hurt_horse=true}, nbt={SelectedItem:{id:"minecraft:rotten_flesh", Count:64b}}] at @s run function zombify_horse:detect_skeleton_horse/start

execute as @a[advancements={zombify_horse:player_hurt_horse=true}] run advancement revoke @s only zombify_horse:player_hurt_horse
