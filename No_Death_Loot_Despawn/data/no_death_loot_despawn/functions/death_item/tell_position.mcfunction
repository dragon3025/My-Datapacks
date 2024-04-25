execute store result score @s death_item_x run data get entity @s Pos[0]
execute store result score @s death_item_y run data get entity @s Pos[1]
execute store result score @s death_item_z run data get entity @s Pos[2]
execute store result score @s death_item_count run data get entity @s Item.Count
tellraw @a [{"selector":"@s"},{"text":"×"},{"score":{"name":"@s","objective":"death_item_count"}},{"text":": My Position is X:"},{"score":{"name":"@s","objective":"death_item_x"}},{"text":" Y:"},{"score":{"name":"@s","objective":"death_item_y"}},{"text":" Z:"},{"score":{"name":"@s","objective":"death_item_z"}}]
