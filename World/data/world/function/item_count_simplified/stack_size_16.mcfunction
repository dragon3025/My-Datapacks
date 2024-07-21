scoreboard players operation #calc_double_chest temp = @s item_count_simplified_16
scoreboard players set @s item_count_simplified_16 0

scoreboard players set #calc_denominator temp 16

scoreboard players operation #calc_item_remainder temp = #calc_double_chest temp
scoreboard players operation #calc_item_remainder temp %= #calc_denominator temp

scoreboard players operation #calc_double_chest temp /= #calc_denominator temp

scoreboard players set #calc_denominator temp 54

scoreboard players operation #calc_stack_remainder temp = #calc_double_chest temp
scoreboard players operation #calc_stack_remainder temp %= #calc_denominator temp

scoreboard players operation #calc_double_chest temp /= #calc_denominator temp

execute unless score #calc_double_chest temp matches 1 run data merge storage world:data {calc_chest_text:" chests, "}
execute unless score #calc_stack_remainder temp matches 1 run data merge storage world:data {calc_stack_text:" (x16) stacks, "}
execute unless score #calc_item_remainder temp matches 1 run data merge storage world:data {calc_item_text:" items"}

execute if score #calc_double_chest temp matches 1 run data merge storage world:data {calc_chest_text:" chest, "}
execute if score #calc_stack_remainder temp matches 1 run data merge storage world:data {calc_stack_text:" (x16) stack, "}
execute if score #calc_item_remainder temp matches 1 run data merge storage world:data {calc_item_text:" item"}

tellraw @s ["",{"score":{"name":"#calc_double_chest","objective":"temp"}},{"color": "yellow","storage":"world:data","nbt": "calc_chest_text"},{"score":{"name":"#calc_stack_remainder","objective":"temp"}},{"color": "yellow","storage":"world:data","nbt": "calc_stack_text"},"and ",{"score":{"name":"#calc_item_remainder","objective":"temp"}},{"color": "yellow","storage":"world:data","nbt": "calc_item_text"}]
