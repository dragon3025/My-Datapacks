execute store result score #death_item_x temp run data get entity @s Pos[0]
execute store result score #death_item_y temp run data get entity @s Pos[1]
execute store result score #death_item_z temp run data get entity @s Pos[2]
execute store result score #death_item_count temp run data get entity @s Item.count
tellraw @a [{selector:"@s"},{text:" ×"},{score:{name:"#death_item_count",objective:"temp"}},{text: ": "},{color: "yellow",text:"My Position is X:"},{color: "yellow",score:{name:"#death_item_x",objective:"temp"}},{color: "yellow",text:" Y:"},{color: "yellow",score:{name:"#death_item_y",objective:"temp"}},{color: "yellow",text:" Z:"},{color: "yellow",score:{name:"#death_item_z",objective:"temp"}}]
