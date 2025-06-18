$data modify entity @n[type=item, tag=new_book] Item.count set value $(new_book_count)

$clear @s lapis_lazuli $(lapis_cost)
$clear @s book $(new_book_count)
$xp add @s -$(lapis_cost) levels


$execute if score #new_book_count temp matches 1 run return run tellraw @s {text: "Enchanted 1 Book with $(lapis_cost) Lapis Lazuli and $(lapis_cost) Levels of XP.", color: "yellow"}
$tellraw @s {text: "Enchanted $(new_book_count) Books with $(lapis_cost) Lapis Lazuli and $(lapis_cost) Levels of XP.", color: "yellow"}
