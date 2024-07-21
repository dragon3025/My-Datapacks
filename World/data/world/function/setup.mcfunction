gamerule commandBlockOutput false
gamerule disableElytraMovementCheck true
gamerule commandModificationBlockLimit 1000000
#vanilla: 32768
gamerule doFireTick false
gamerule playersSleepingPercentage 0
gamerule enderPearlsVanishOnDeath false

scoreboard objectives add calc_denominator dummy "Calculation Denominator"
scoreboard objectives add calc_double_chest dummy "Calculation Double Chest"
scoreboard objectives add calc_item_remainder dummy "Calculation Item Remainder"
scoreboard objectives add calc_stack_remainder dummy "Calculation Stack Remainder"

scoreboard objectives add item_count_simplified trigger "Item Count Simplified"
scoreboard objectives add item_count_simplified_16 trigger "Item Count Simplified (Stack Size: 16)"
scoreboard objectives add item_count_simplified_1 trigger "Item Count Simplified (Stack Size: 1)"

scoreboard objectives add recipe_update dummy "Recipe Update"
scoreboard objectives add nerf_oozing_timer dummy "Nerf Oozing Timer"

scoreboard objectives add store_player trigger "Store Player"
scoreboard objectives add store_player_xp_lv dummy "Store Player XP Level"
scoreboard objectives add store_player_xp dummy "Store Player XP"
scoreboard objectives add store_player_id dummy "Store Player ID"
scoreboard players add admin store_player_id 0
scoreboard objectives add store_player_count dummy "Creative Item Swap Count"
scoreboard objectives add store_player_slot dummy "Creative Item Swap Slot"

scoreboard objectives add temp dummy "Temporary"
