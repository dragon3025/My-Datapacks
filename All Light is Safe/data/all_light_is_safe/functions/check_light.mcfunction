scoreboard players set @s sky_coverage 0

#Center

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
function all_light_is_safe:test_sky_coverage

#Inner Ring

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~1 ~ ~ run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~-1 ~ ~ run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~ ~ ~1 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~ ~ ~-1 run function all_light_is_safe:test_sky_coverage

#Center Ring

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~2 ~ ~ run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~1 ~ ~1 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~ ~ ~2 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~-1 ~ ~1 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~-2 ~ ~ run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~-1 ~ ~-1 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~ ~ ~-2 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~1 ~ ~-1 run function all_light_is_safe:test_sky_coverage

#Outer Ring

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~3 ~ ~ run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~2 ~ ~1 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~1 ~ ~2 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~ ~ ~3 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~-1 ~ ~2 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~-2 ~ ~1 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~-3 ~ ~ run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~-2 ~ ~-1 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~-1 ~ ~-2 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~ ~ ~-3 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~1 ~ ~-2 run function all_light_is_safe:test_sky_coverage

execute store result score @s sky_test_y run data get entity @s Pos[2]
scoreboard players remove @s sky_test_y 1
execute at @s positioned ~2 ~ ~-1 run function all_light_is_safe:test_sky_coverage

#Test Light

execute as @s[scores={sky_coverage=..24}, predicate=all_light_is_safe:light_safe_surface] run tag @s add safe_light_despawn
execute as @s[scores={sky_coverage=25}, predicate=all_light_is_safe:light_safe] run tag @s add safe_light_despawn
execute as @s[tag=safe_light_despawn] run tp @s ~ -128 ~
