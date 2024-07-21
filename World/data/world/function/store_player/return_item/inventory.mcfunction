execute store result score #slot temp run data get entity @s data.Inventory[0].Slot
data remove entity @s data.Inventory[0].Slot
data merge block ~ ~ ~ {Items:[]}
data modify block ~ ~ ~ Items append from entity @s data.Inventory[0]

function world:store_player/give_correct_slot/inventory

data remove entity @s data.Inventory[0]
scoreboard players remove #items temp 1
execute if score #items temp matches 1.. run return run function world:store_player/return_item/inventory
