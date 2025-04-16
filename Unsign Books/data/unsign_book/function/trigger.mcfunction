scoreboard players set @s unsign_book 0

execute as @s[nbt=!{SelectedItem:{id:"minecraft:written_book"}}] run return run tellraw @s {text: "You have to hold the Book you want to unsign in your Main-Hand.", color: "red"}

summon item ~ ~ ~ {Item:{id:writable_book}, Tags: ["unsigned_book"]}
data modify entity @n[type=item, tag=unsigned_book] Item.components."minecraft:writable_book_content".pages set from entity @s SelectedItem.components."minecraft:written_book_content".pages
tag @n[type=item, tag=unsigned_book] remove unsigned_book

item replace entity @s weapon.mainhand with air
