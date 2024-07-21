execute store result score #slot temp run data get entity @s data.EnderItems[0].Slot
data remove entity @s data.EnderItems[0].Slot
data merge block ~ ~ ~ {Items:[]}
data modify block ~ ~ ~ Items append from entity @s data.EnderItems[0]

function world:store_player/give_correct_slot/ender_chest

data remove entity @s data.EnderItems[0]
scoreboard players remove #ender_items temp 1
execute if score #ender_items temp matches 1.. run return run function world:store_player/return_item/ender_chest
