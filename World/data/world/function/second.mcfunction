schedule function world:second 1s

scoreboard players add @a recipe_update 0
execute as @a[scores={recipe_update=0}] run function world:update_recipes

execute if entity @n[type=!player, type=!#immune_to_oozing, nbt={active_effects:[{id:"minecraft:oozing"}]}] run scoreboard players set admin nerf_oozing_timer 600
execute if score admin nerf_oozing_timer matches 1.. run execute as @e[type=slime, tag=!oozing_nerfed] run function world:nerf_oozing
scoreboard players remove admin nerf_oozing_timer 1

execute as @a unless score @s left_game matches 0 run tellraw @s [{"color": "yellow", "text": "You can store your player with "},{"color": "aqua", "text": "/trigger store_player", "clickEvent": {"action": "run_command", "value": "/trigger store_player"}}, {"color": "yellow", "text": ". You can also use Journeymap's Waypoints.\n\nUse Advancements for datapack info. World info: "},{"color": "aqua", "text": "link", "clickEvent": {"action": "open_url", "value": "ADD URL HERE!!!"}}]

execute as @a unless score @s left_game matches 0 run scoreboard players set @s left_game 0
