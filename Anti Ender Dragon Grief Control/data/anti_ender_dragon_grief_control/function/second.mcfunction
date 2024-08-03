execute if score admin anti_ender_dragon_grief_enabled matches 1 run return fail
schedule function anti_ender_dragon_grief_control:second 1s

execute if entity @p[advancements={minecraft:end/kill_dragon=true}] run function anti_ender_dragon_grief_control:enable_pack
