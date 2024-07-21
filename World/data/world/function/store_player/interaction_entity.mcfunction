xp set @s 0 levels
xp set @s 0 points
clear

execute store result score #items temp run data get entity @s data.Inventory
execute store result score #ender_items temp run data get entity @s data.EnderItems

setblock ~ ~ ~ chest
execute if score #items temp matches 1.. run function world:store_player/return_item/inventory
execute if score #ender_items temp matches 1.. run function world:store_player/return_item/ender_chest
setblock ~ ~ ~ air

execute store result storage world:data store_player.xp_lv int 1 run scoreboard players get @s store_player_xp_lv
execute store result storage world:data store_player.xp int 1 run scoreboard players get @s store_player_xp
function world:store_player/give_xp with storage world:data store_player

tellraw @p {"color": "yellow", "text": "Retreived Experience, Inventory, and Ender Chest"}

kill @n[tag=store_player_storage, limit=6]
