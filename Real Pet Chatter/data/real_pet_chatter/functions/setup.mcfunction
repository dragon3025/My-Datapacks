#Note time between pet sounds without datapacks seems to be random between 5-10 seconds.

#Set Admin Scores if not set yet
scoreboard objectives add max_pet_chatter_seconds dummy "Max Pet Chatter Seconds"
scoreboard objectives add min_pet_chatter_seconds dummy "Min Pet Chatter Seconds"
scoreboard objectives add mobs_anger_cats dummy "Cats Make Angry Sounds at Hostile Mobs (Resource Pack Recommended)"
scoreboard objectives add mobs_anger_dogs dummy "Dogs Make Angry Sounds at Hostile Mobs"

execute unless score admin max_pet_chatter_seconds matches -2147483648..2147483647 run scoreboard players set admin max_pet_chatter_seconds 30
execute unless score admin min_pet_chatter_seconds matches -2147483648..2147483647 run scoreboard players set admin min_pet_chatter_seconds 10
execute unless score admin mobs_anger_cats matches -2147483648..2147483647 run scoreboard players set admin mobs_anger_cats 1
execute unless score admin mobs_anger_dogs matches -2147483648..2147483647 run scoreboard players set admin mobs_anger_dogs 1

#Other Scores
scoreboard objectives add pet_chatter_time dummy "Time allowed for Pet Chatter (in Seconds)"
scoreboard objectives add pet_chatter_limit dummy "Time limit allowed for Pet Chatter (in Seconds) randomly set from min + max"
scoreboard objectives add pet_health dummy "Pet Health"
scoreboard objectives add previous_pet_health dummy "Pet Previous Health"
scoreboard objectives add has_owner dummy "Has an Owner"
scoreboard objectives add has_rider dummy "Has an Rider"
