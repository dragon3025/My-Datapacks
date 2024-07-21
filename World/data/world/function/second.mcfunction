schedule function world:second 1s

scoreboard players add @a recipe_update 0
execute as @a[scores={recipe_update=0}] run function world:update_recipes

execute if entity @n[type=!player, type=!#immune_to_oozing, nbt={active_effects:[{id:"minecraft:oozing"}]}] run scoreboard players set admin nerf_oozing_timer 600
execute if score admin nerf_oozing_timer matches 1.. run execute as @e[type=slime, tag=!oozing_nerfed] run function world:nerf_oozing
scoreboard players remove admin nerf_oozing_timer 1
