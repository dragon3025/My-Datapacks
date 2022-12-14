# Transform Pillager to Illusioner by hitting it with Dragon Breath
execute as @s[nbt={SelectedItem:{id:"minecraft:dragon_breath"}}] at @s as @e[type=minecraft:pillager, nbt={HurtTime:10s}, limit=1, sort=nearest] at @s run function illusioner_transformation:transform
advancement revoke @s only illusioner_transformation:player_hurt_pillager
