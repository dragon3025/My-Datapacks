execute on passengers on vehicle run tag @s add passenger_still_in_chair
execute as @s[tag=!passenger_still_in_chair] run function take_a_seat:despawn_chair
tag @s remove passenger_still_in_chair
