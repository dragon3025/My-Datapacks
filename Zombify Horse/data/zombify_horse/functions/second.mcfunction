schedule function zombify_horse:second 1s

# Count Seconds Tamed
execute as @e[type=horse, nbt={Tame:true}] unless entity @s[scores={zombify_horse_seconds_tamed=61..}] run scoreboard players add @s zombify_horse_seconds_tamed 1
