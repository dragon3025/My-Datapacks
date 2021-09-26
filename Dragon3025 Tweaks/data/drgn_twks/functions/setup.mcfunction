# Set Admin Objectives if not set
scoreboard objectives add dt_dry_farmland dummy "Dry Farmland"
scoreboard objectives add dt_melt_snow dummy "Melt Snow"

execute unless score admin dt_dry_farmland matches -2147483648..2147483647 run scoreboard players set admin dt_dry_farmland 1
execute unless score admin dt_melt_snow matches -2147483648..2147483647 run scoreboard players set admin dt_melt_snow 1
