gamerule doDaylightCycle false
gamerule doWeatherCycle false
time set 0
weather clear

tellraw @s [{"color": "yellow", "text": "Time and Weather frozen. To block off a section of world, set the world border center using this formula (click to copy):\n"},{"color": "green", "text": "(position + (-1 * sign(position) * 29999984))","clickEvent":{"action": "copy_to_clipboard", "value": "(position + (-1 * sign(position) * 29999984))"}}]
