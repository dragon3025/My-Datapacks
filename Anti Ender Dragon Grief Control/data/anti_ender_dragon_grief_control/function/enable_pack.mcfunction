datapack enable "file/Anti Ender Dragon Grief"
scoreboard players set admin anti_ender_dragon_grief_enabled 1
tellraw @a [{"color": "yellow", "text": "The Ender Dragon can no longer destroy blocks."}]
