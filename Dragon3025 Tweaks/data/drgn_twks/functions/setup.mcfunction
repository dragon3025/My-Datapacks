# Set Admin Objectives if not set
scoreboard objectives add dt_dry_farmland dummy "Dry Farmland"
scoreboard objectives add dt_melt_obsidian dummy "Melt Obsidian"
scoreboard objectives add dt_melt_snow dummy "Melt Snow"
scoreboard objectives add dt_rabt_imun_fdm dummy "Rabbits are Immune to Fall Damage"
scoreboard objectives add dt_raider_finder dummy "Bells find Raiders easier"

execute unless score admin dt_dry_farmland matches -2147483648..2147483647 run scoreboard players set admin dt_dry_farmland 1
execute unless score admin dt_melt_obsidian matches -2147483648..2147483647 run scoreboard players set admin dt_melt_obsidian 1
execute unless score admin dt_melt_snow matches -2147483648..2147483647 run scoreboard players set admin dt_melt_snow 1
execute unless score admin dt_rabt_imun_fdm matches -2147483648..2147483647 run scoreboard players set admin dt_rabt_imun_fdm 1
execute unless score admin dt_raider_finder matches -2147483648..2147483647 run scoreboard players set admin dt_raider_finder 1
