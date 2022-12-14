execute as @s[nbt={SelectedItem:{id:"minecraft:rotten_flesh", Count:64b}}] as @e[type=minecraft:skeleton_horse, nbt={Tame:true, CustomName: '{"text":"zombie"}', HurtTime:10s}, limit=1, sort=nearest] at @s run function zombify_horse:transform
advancement revoke @s only zombify_horse:player_hurt_horse
