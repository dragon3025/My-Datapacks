# Set scoreboard variables (these aren't ever changed, but are used for operations)
scoreboard objectives add dragon3025_tick dummy "Dragon3025 Tweak Tick Timer"
scoreboard players add dummy dragon3025_tick 0

# Set Admin Objectives if not set
scoreboard objectives add dt_dry_farmland dummy "Dry Farmland"
scoreboard objectives add dt_melt_obsidian dummy "Melt Obsidian"
scoreboard objectives add dt_melt_snow dummy "Melt Snow"
scoreboard objectives add dt_emancity_loot dummy "Enderman End City Gear"
scoreboard objectives add dt_eman_de_loot dummy "Enderman Dragon Egg"
scoreboard objectives add dt_in_w_skl_loot dummy "Increase Wither Skeleton Loot"
scoreboard objectives add dt_wbifr_caldron dummy "Water Bucket in Item Frames Will Refill Cauldrons"
scoreboard objectives add dt_rabt_imun_fdm dummy "Rabbits are Immune to Fall Damage"
scoreboard objectives add dt_raider_finder dummy "Bells find Raiders easier"
scoreboard objectives add dt_tnt_break_br dummy "TNT breaks bedrock (except for above and y=1)"

execute unless score admin dt_dry_farmland matches -2147483648..2147483647 run scoreboard players set admin dt_dry_farmland 1
execute unless score admin dt_melt_obsidian matches -2147483648..2147483647 run scoreboard players set admin dt_melt_obsidian 1
execute unless score admin dt_melt_snow matches -2147483648..2147483647 run scoreboard players set admin dt_melt_snow 1
execute unless score admin dt_emancity_loot matches -2147483648..2147483647 run scoreboard players set admin dt_emancity_loot 1
execute unless score admin dt_eman_de_loot matches -2147483648..2147483647 run scoreboard players set admin dt_eman_de_loot 1
# I've seen a new design that made Wither Skull farms very easy, so it doesn't take tedious hours of spawn proofing.
execute unless score admin dt_in_w_skl_loot matches -2147483648..2147483647 run scoreboard players set admin dt_in_w_skl_loot 0
execute unless score admin dt_wbifr_caldron matches -2147483648..2147483647 run scoreboard players set admin dt_wbifr_caldron 1
execute unless score admin dt_rabt_imun_fdm matches -2147483648..2147483647 run scoreboard players set admin dt_rabt_imun_fdm 1
execute unless score admin dt_raider_finder matches -2147483648..2147483647 run scoreboard players set admin dt_raider_finder 1
execute unless score admin dt_tnt_break_br matches -2147483648..2147483647 run scoreboard players set admin dt_tnt_break_br 1
