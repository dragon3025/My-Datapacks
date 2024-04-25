schedule function bell_finds_all_raiders:second 1s

# Bells Help Find Raids
execute as @a[scores={bell_rung=1..}] run function bell_finds_all_raiders:bell_rung

scoreboard players reset @a bell_rung
