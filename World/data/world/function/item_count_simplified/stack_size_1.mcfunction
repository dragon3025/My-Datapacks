scoreboard players operation @s calc_double_chest = @s item_count_simplified_1
scoreboard players set @s item_count_simplified_1 0

scoreboard players set @s calc_denominator 54

scoreboard players operation @s calc_item_remainder = @s calc_double_chest
scoreboard players operation @s calc_item_remainder %= @s calc_denominator

scoreboard players operation @s calc_double_chest /= @s calc_denominator

execute unless entity @s[scores={calc_double_chest=1}] run data merge storage world:data {calc_chest_text:" chests "}
execute unless entity @s[scores={calc_item_remainder=1}] run data merge storage world:data {calc_item_text:" items"}

execute as @s[scores={calc_double_chest=1}] run data merge storage world:data {calc_chest_text:" chest "}
execute as @s[scores={calc_item_remainder=1}] run data merge storage world:data {calc_item_text:" item"}

tellraw @s ["",{"score":{"name":"@s","objective":"calc_double_chest"}},{"color": "yellow","storage":"world:data","nbt": "calc_chest_text"},{"text": "and "},{"score":{"name":"@s","objective":"calc_item_remainder"}},{"color": "yellow","storage":"world:data","nbt": "calc_item_text"}]
