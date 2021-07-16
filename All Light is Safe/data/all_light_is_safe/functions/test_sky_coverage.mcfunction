execute if score @s sky_test_y matches ..255 if block ~ ~ ~ #all_light_is_safe:air run scoreboard players add @s sky_test_y 1
execute if score @s sky_test_y matches ..255 unless block ~ ~ ~ #all_light_is_safe:air run scoreboard players add @s sky_coverage 1
execute if score @s sky_test_y matches ..255 if block ~ ~ ~ #all_light_is_safe:air positioned ~ ~1 ~ run function all_light_is_safe:test_sky_coverage
