scoreboard players operation #new_book_count temp = @s copy_enchanted_book
scoreboard players set @s copy_enchanted_book 0

execute unless entity @s[nbt={SelectedItem:{id:"minecraft:enchanted_book"}}] run return run tellraw @s {text: "You need to hold the Enchanted Book that you want to copy in your Main Hand.", color: "red"}

execute store result score @s temp run clone ~-5 ~-5 ~-5 ~5 ~5 ~5 ~-5 ~-5 ~-5 strict filtered enchanting_table force
execute as @s[scores={temp=0}] run return run tellraw @s {text: "You need to be near an Enchanted Table", color: "red"}

scoreboard players set #lapis_cost temp 3
    scoreboard players operation #lapis_cost temp *= #new_book_count temp

execute store result score #lapis temp run clear @s lapis_lazuli 0
execute if score #lapis temp < #lapis_cost temp run return run tellraw @s [{text: "You need ", color: "red"},{score: {name: "#lapis_cost", objective: "temp"}, color: "white"}, {text: " Lapis Lazuli to enchant "},{score: {name: "#new_book_count", objective: "temp"}, color: "white"},{text: " books.", color: "red"}]

execute store result score #books temp run clear @s book 0
execute if score #books temp < #new_book_count temp run return run tellraw @s [{text: "You need ", color: "red"},{score: {name: "#new_book_count", objective: "temp"}, color: "white"}, {text: " Books to enchant "},{score: {name: "#new_book_count", objective: "temp"}, color: "white"},{text: " books.", color: "red"}]

scoreboard players set #level_cost temp 27
    scoreboard players operation #level_cost temp += #lapis_cost temp
execute store result score #levels temp run xp query @s levels
execute if score #levels temp < #level_cost temp run return run tellraw @s [{text: "You need ", color: "red"},{score: {name: "#level_cost", objective: "temp"}, color: "white"}, {text: " Levels of XP to enchant "},{score: {name: "#new_book_count", objective: "temp"}, color: "white"},{text: " books.", color: "red"}]

summon item ~ ~ ~ {Item:{id:"enchanted_book"}, Tags:[new_book]}
data modify entity @n[type=item, tag=new_book] Item.components set from entity @s SelectedItem.components

execute store result storage easier_enchants:data lapis_cost int 1 run scoreboard players get #lapis_cost temp
execute store result storage easier_enchants:data new_book_count int 1 run scoreboard players get #new_book_count temp

function easier_enchants:set_count_and_give_payment with storage easier_enchants:data

tag @n[type=item, tag=new_book] remove new_book

playsound minecraft:block.enchantment_table.use block @a
