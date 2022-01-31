execute if score @s pet_chatter_time > admin pet_chatter_limit run scoreboard players operation @s pet_chatter_time = admin pet_chatter_limit

# Special Unmute Conditions
## Pets unmute when hurt, to prevent mobs from being quite when attacked
execute store result score @s pet_health run data get entity @s Health
execute as @s[scores={previous_pet_health=0..}] if score @s pet_health < @s previous_pet_health run function real_pet_chatter:damage_unmute
scoreboard players operation @s previous_pet_health = @s pet_health

# Tag mob if player is near
execute unless entity @p[distance=..32] run tag @s add player_far

# Increase chat time if player is far (with variance)
execute as @s[tag=player_far] unless score @s pet_chatter_time >= @s pet_chatter_limit run scoreboard players add @s pet_chatter_time 1
execute if predicate real_pet_chatter:chat_variance_chance as @s[tag=player_far] unless score @s pet_chatter_time >= @s pet_chatter_limit run scoreboard players add @s pet_chatter_time 1
execute if predicate real_pet_chatter:chat_variance_chance as @s[tag=player_far, scores={pet_chatter_time=2..}] run scoreboard players remove @s pet_chatter_time 1

# Decrease pet chatter time if player is near. Set new random limit if chat time hits 0.
execute as @s[tag=!player_far, scores={pet_chatter_time=1}] store result score @s pet_chatter_limit run loot spawn ~ -128 ~ loot real_pet_chatter:rand_pet_chatter
execute as @s[tag=!player_far, scores={pet_chatter_time=1..}] run scoreboard players remove @s pet_chatter_time 1

# Set chatter time to limit when their is a threat (except cats)
execute as @s[type=#real_pet_chatter:pets, type=!cat, tag=angry_pet] run scoreboard players operation @s pet_chatter_time = @s pet_chatter_limit

# Set cat chatter time to 0, so they only growl, hiss, or yell (it doesn't sound right when they give a friendly meow to a threat)
execute as @s[type=cat, tag=angry_pet] run loot spawn ~ -128 ~ loot real_pet_chatter:rand_pet_chatter
execute as @s[type=cat, tag=angry_pet] run scoreboard players set @s pet_chatter_time 0

# Set chatter time to limit when player is very far
execute unless entity @p[distance=..128] run scoreboard players operation @s pet_chatter_time = @s pet_chatter_limit

# Toggle Chatting Status
## Mute when score for chatter is 0 unless set to always chat
execute as @s[scores={pet_chatter_time=..0}] run data merge entity @s {Silent:true}
## Umute when score chatter time is 1 or more
execute as @s[scores={pet_chatter_time=1..}] run data merge entity @s {Silent:false}

## Allow pets to make noise no matter what chatting mode when a player is right up to them (this will allow sounds from pets you're riding)
execute unless entity @s[type=cat, tag=angry_pet] if entity @p[distance=..1] run data merge entity @s {Silent:false}

tag @s remove player_far
