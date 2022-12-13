schedule function zombify_horse:second 1s

# Transform a Newly Tamed Horse to Zombie Horse by hitting it with Rotten Flesh
execute as @a[advancements={zombify_horse:player_hurt_horse=true}, nbt={SelectedItem:{id:"minecraft:rotten_flesh", Count:64b}}] at @s as @e[type=minecraft:skeleton_horse, nbt={Tame:true}, limit=1, sort=nearest] at @s run function zombify_horse:transform

execute as @a[advancements={zombify_horse:player_hurt_horse=true}] run advancement revoke @s only zombify_horse:player_hurt_horse
