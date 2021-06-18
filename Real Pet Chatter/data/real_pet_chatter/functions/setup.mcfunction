#Note time between pet sounds without datapacks seems to be random between 5-10 seconds.

#Set Admin Scores if not set yet
scoreboard objectives add min_chatter_wait dummy "Min Time Between Pet Chatter (in Seconds)"
scoreboard objectives add max_chatter_wait dummy "Max Time Between Pet Chatter (in Seconds)"
scoreboard objectives add min_pet_chatter dummy "Min Time For Pet Chatter (in Seconds)"
scoreboard objectives add max_pet_chatter dummy "Max Time For Pet Chatter (in Seconds)"
scoreboard objectives add mobs_anger_cats dummy "Cats Make Angry Sounds at Hostile Mobs (Resource Pack Recommended)"
scoreboard objectives add mobs_anger_dogs dummy "Dogs Make Angry Sounds at Hostile Mobs"
scoreboard objectives add uni_rp_chatter dummy "Prepare for Real Pet Chatter Unintallation"

execute unless score admin min_chatter_wait matches -2147483648..2147483647 run scoreboard players set admin min_chatter_wait 20
execute unless score admin max_chatter_wait matches -2147483648..2147483647 run scoreboard players set admin max_chatter_wait 150
execute unless score admin min_pet_chatter matches -2147483648..2147483647 run scoreboard players set admin min_pet_chatter 10
execute unless score admin max_pet_chatter matches -2147483648..2147483647 run scoreboard players set admin max_pet_chatter 30
execute unless score admin mobs_anger_cats matches -2147483648..2147483647 run scoreboard players set admin mobs_anger_cats 1
execute unless score admin mobs_anger_dogs matches -2147483648..2147483647 run scoreboard players set admin mobs_anger_dogs 1
execute unless score admin uni_rp_chatter matches -2147483648..2147483647 run scoreboard players set admin uni_rp_chatter -1

#Other Scores
scoreboard objectives add pet_chatter_cool dummy "Pet Chatter Cool Down"
scoreboard objectives add rp_chatter_tick dummy "Timer for seconds processing"
scoreboard objectives add pet_chatter_time dummy "Time allowed for Pet Chatter (in Seconds)"
scoreboard objectives add wolf_anger_time dummy "Wolf Anger Time"
