schedule clear no_death_loot_despawn:tick

scoreboard objectives remove died
scoreboard objectives remove death_item_x
scoreboard objectives remove death_item_y
scoreboard objectives remove death_item_z
scoreboard objectives remove death_item_count

tag @e remove death_item
