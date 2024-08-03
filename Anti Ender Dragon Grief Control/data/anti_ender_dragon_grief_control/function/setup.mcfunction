scoreboard objectives add anti_ender_dragon_grief_enabled dummy "Anti-Ender Dragon Grief Enabled"
scoreboard players add admin anti_ender_dragon_grief_enabled 0

execute if entity @p[advancements={minecraft:end/kill_dragon=true}] run scoreboard players set admin anti_ender_dragon_grief_enabled 1

execute if score admin anti_ender_dragon_grief_enabled matches 1 run return fail

datapack disable "file/Anti Ender Dragon Grief"
