schedule function illusioner_transformation:tick 1t

# Transform Pillager to Illusioner by hitting it with Dragon Breath
execute as @a[advancements={illusioner_transfomration:player_hurt_pillager}, nbt={SelectedItem:{id:"minecraft:dragon_breath"}}] at @s as @e[type=minecraft:pillager, nbt={HurtTime:10s}, limit=1, sort=nearest] run function illusioner_transformation:transform
execute as @a[advancements={illusioner_transfomration:player_hurt_pillager}] run advancement revoke @s only illusioner_transfomration:player_hurt_pillager
